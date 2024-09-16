import 'package:injectable/injectable.dart';

import '../../presentation/core/router/app_auto_router.dart';

@module
abstract class AppRouterModule {
  @singleton
  AppAutoRouter appAutoRouter() => AppAutoRouter();
}
