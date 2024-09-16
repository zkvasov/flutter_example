import 'package:injectable/injectable.dart';

import '../../entities/auth/user_session.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class GetUserSessionUseCase {
  final AuthRepository _authRepository;

  GetUserSessionUseCase(this._authRepository);

  Future<UserSession?> call() => _authRepository.getUserSession();
}
