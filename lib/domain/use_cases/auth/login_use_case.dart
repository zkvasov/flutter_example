import 'package:injectable/injectable.dart';
import 'package:flutter_example/domain/repositories/auth_repository.dart';

import '../../entities/auth/user_session.dart';

@lazySingleton
class LoginUseCase {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  Future<void> call(UserSession session) {
    return _authRepository.login(session);
  }
}
