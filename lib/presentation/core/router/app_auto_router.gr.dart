// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter_example/presentation/pages/login_page.dart' as _i1;
import 'package:flutter_example/presentation/pages/user_details_page.dart'
    as _i2;
import 'package:flutter_example/presentation/pages/users_page.dart' as _i3;

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i4.WrappedRoute(child: const _i1.LoginPage());
    },
  );
}

/// generated route for
/// [_i2.UserDetailsPage]
class UserDetailsRoute extends _i4.PageRouteInfo<UserDetailsRouteArgs> {
  UserDetailsRoute({
    _i5.Key? key,
    required int userId,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          UserDetailsRoute.name,
          args: UserDetailsRouteArgs(
            key: key,
            userId: userId,
          ),
          rawPathParams: {'id': userId},
          initialChildren: children,
        );

  static const String name = 'UserDetailsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserDetailsRouteArgs>(
          orElse: () => UserDetailsRouteArgs(userId: pathParams.getInt('id')));
      return _i4.WrappedRoute(
          child: _i2.UserDetailsPage(
        key: args.key,
        userId: args.userId,
      ));
    },
  );
}

class UserDetailsRouteArgs {
  const UserDetailsRouteArgs({
    this.key,
    required this.userId,
  });

  final _i5.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserDetailsRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i3.UsersPage]
class UsersRoute extends _i4.PageRouteInfo<void> {
  const UsersRoute({List<_i4.PageRouteInfo>? children})
      : super(
          UsersRoute.name,
          initialChildren: children,
        );

  static const String name = 'UsersRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i4.WrappedRoute(child: const _i3.UsersPage());
    },
  );
}
