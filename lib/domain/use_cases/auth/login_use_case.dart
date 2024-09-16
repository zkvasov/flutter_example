import 'package:injectable/injectable.dart';

import '../../entities/auth/user_session.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class LoginUseCase {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  Future<void> call(UserSession session) => _authRepository.login(session);
}
