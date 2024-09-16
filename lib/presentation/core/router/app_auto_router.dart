import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_auto_router.gr.dart';

const _durationInMilliseconds = 300;

class _AppRoute<R> extends CustomRoute<R> {
  _AppRoute({
    required super.page,
    required super.path,
    RouteTransitionsBuilder transitionsBuilder = TransitionsBuilders.fadeIn,
    super.children,
  }) : super(
          transitionsBuilder: transitionsBuilder,
          durationInMilliseconds: _durationInMilliseconds,
          reverseDurationInMilliseconds: _durationInMilliseconds,
        );
}

@AutoRouterConfig()
class AppAutoRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        _AppRoute(
          page: LoginRoute.page,
          path: '/',
        ),
        _AppRoute(
          page: UsersRoute.page,
          path: '/users',
          transitionsBuilder: TransitionsBuilders.slideRight,
        ),
        _AppRoute(
          page: UserDetailsRoute.page,
          path: '/users/:id',
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
      ];
}
