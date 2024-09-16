import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_example/presentation/bloc/user_details_page/user_details_page_cubit.dart';
import 'package:flutter_example/presentation/widgets/app_loader.dart';

import '../../di/di.dart';
import '../core/helpers/app_toasts.dart';
import '../widgets/cards/info_card.dart';

@RoutePage()
class UserDetailsPage extends StatelessWidget implements AutoRouteWrapper {
  final int userId;

  const UserDetailsPage({
    super.key,
    @PathParam('id') required this.userId,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<UserDetailsPageCubit>(param1: userId),
      child: this,
    );
  }

  void _onStateChanged(
    BuildContext context,
    UserDetailsPageState state,
  ) {
    switch (state.status) {
      case UserDetailsPageStatus.error:
        AppToasts.of(context).showError(state.errorMessage);
        break;
      default:
        return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserDetailsPageCubit, UserDetailsPageState>(
      listener: _onStateChanged,
      builder: (context, state) {
        final user = state.user;
        final loading =
            state.status == UserDetailsPageStatus.loading || user == null;

        return Scaffold(
          appBar: AppBar(
            title: loading ? const AppLoader() : Text(user.name),
            automaticallyImplyLeading: true,
          ),
          body: loading
              ? const Center(child: AppLoader())
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InfoCard(label: 'Email', info: user.email),
                      const SizedBox(height: 8),
                      InfoCard(label: 'Phone', info: user.phone),
                      const SizedBox(height: 8),
                      InfoCard(label: 'Address', info: user.address),
                      const SizedBox(height: 8),
                      InfoCard(label: 'Company', info: user.company),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
