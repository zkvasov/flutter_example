import 'package:injectable/injectable.dart';

import '../../../di/di.dart';
import 'app_auto_router.dart';
import 'app_auto_router.gr.dart';
import 'base_router.dart';

/// Getter (NOT a final variable) to allow Hot Reloading
/// with new routes without restart
AppRouter get router => sl<AppRouter>();

@singleton
class AppRouter extends BaseRouter {
  AppRouter(AppAutoRouter super.router);

  Future<void> replaceToUsersPage() async {
    await replace(const UsersRoute());
  }

  Future<void> pushUserDetailsPage(int userId) async {
    await push(UserDetailsRoute(userId: userId));
  }
}
