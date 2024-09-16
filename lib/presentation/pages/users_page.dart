import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/di.dart';
import '../bloc/users_page/users_page_cubit.dart';
import '../core/helpers/app_toasts.dart';
import '../core/router/app_router.dart';
import '../widgets/app_loader.dart';

@RoutePage()
class UsersPage extends StatelessWidget implements AutoRouteWrapper {
  const UsersPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => sl<UsersPageCubit>(),
        child: this,
      );

  void _onStateChanged(
    BuildContext context,
    UsersPageState state,
  ) {
    switch (state.status) {
      case UsersPageStatus.error:
        AppToasts.of(context).showError(state.errorMessage);
        break;
      case UsersPageStatus.init:
      case UsersPageStatus.loading:
      case UsersPageStatus.success:
        break;
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Users'),
        ),
        body: BlocConsumer<UsersPageCubit, UsersPageState>(
          listener: _onStateChanged,
          builder: (context, state) {
            if (state.status == UsersPageStatus.loading) {
              return const Center(
                child: AppLoader(),
              );
            }

            return ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                final user = state.users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                  onTap: () => router.pushUserDetailsPage(user.id),
                );
              },
            );
          },
        ),
      );
}
