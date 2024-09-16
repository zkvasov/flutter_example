import 'package:injectable/injectable.dart';
import 'package:flutter_example/domain/repositories/auth_repository.dart';

import '../../entities/auth/user_session.dart';

@lazySingleton
class GetUserSessionUseCase {
  final AuthRepository _authRepository;

  GetUserSessionUseCase(this._authRepository);

  Future<UserSession?> call() {
    return _authRepository.getUserSession();
  }
}
