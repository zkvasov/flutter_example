import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../di/di.dart';
import '../bloc/login_page/login_page_cubit.dart';
import '../core/helpers/app_toasts.dart';
import '../core/router/app_router.dart';
import '../widgets/app_loader.dart';

enum _LoginPageFields {
  email,
  password,
}

@RoutePage()
class LoginPage extends StatefulWidget implements AutoRouteWrapper {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => sl<LoginPageCubit>(),
        child: this,
      );
}

class _LoginPageState extends State<LoginPage> {
  final _fbKey = GlobalKey<FormBuilderState>();

  LoginPageCubit get _cubit => context.read();

  void _onLoginTap() {
    if (_fbKey.currentState?.saveAndValidate() ?? false) {
      final email =
          _fbKey.currentState?.value[_LoginPageFields.email.name] as String;
      final password =
          _fbKey.currentState?.value[_LoginPageFields.password.name] as String;

      _cubit.login(email: email, password: password);
    }
  }

  void _onStateChanged(
    BuildContext context,
    LoginPageState state,
  ) {
    switch (state.status) {
      case LoginPageStatus.error:
        AppToasts.of(context).showError(state.errorMessage);
        return;
      case LoginPageStatus.success:
        router.replaceToUsersPage();
        break;
      case LoginPageStatus.idle:
      case LoginPageStatus.loading:
        break;
    }
  }

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<LoginPageCubit, LoginPageState>(
        listener: _onStateChanged,
        builder: (context, state) {
          if (state.status == LoginPageStatus.loading) {
            return const AppLoader();
          }

          return Scaffold(
            appBar: AppBar(
              title: const Text('Login'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: FormBuilder(
                key: _fbKey,
                child: _buildBody(),
              ),
            ),
          );
        },
      );

  Widget _buildBody() => Column(
        children: [
          FormBuilderTextField(
            name: _LoginPageFields.email.name,
            validator: FormBuilderValidators.required(),
            decoration: const InputDecoration(
              label: Text('Login'),
            ),
          ),
          const SizedBox(height: 16),
          FormBuilderTextField(
            name: _LoginPageFields.password.name,
            validator: FormBuilderValidators.required(),
            decoration: const InputDecoration(
              label: Text('Password'),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _onLoginTap,
            child: const Text('Login'),
          )
        ],
      );
}
