import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

abstract class BaseRouter {
  final StackRouter stackRouter;

  const BaseRouter(this.stackRouter);

  @protected
  void popToRoot() => stackRouter.popUntilRoot();

  @protected
  Future<T?> push<T>(PageRouteInfo<dynamic> route) =>
      stackRouter.push<T>(route);

  @protected
  Future<void> replace(PageRouteInfo<dynamic> route) =>
      stackRouter.replace(route);

  Future<void> pop<T>([T? result]) => stackRouter.maybePop<T>(result);
}
