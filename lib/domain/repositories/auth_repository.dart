import '../entities/auth/user_session.dart';

abstract class AuthRepository {
  Future<UserSession?> getUserSession();

  Future<void> login(UserSession session);
}
