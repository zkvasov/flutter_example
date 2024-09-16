import '../../domain/entities/auth/user_session.dart';
import '../../domain/repositories/auth_repository.dart';
import '../core/repository/base_repository.dart';
import '../data_sources/models/auth/user_session_dto.dart';
import '../data_sources/storage/dao/user_session_dao.dart';

class AuthRepositoryImpl extends BaseRepository implements AuthRepository {
  final UserSessionDao _userSessionDao;

  AuthRepositoryImpl(this._userSessionDao);

  @override
  Future<UserSession?> getUserSession() => makeErrorParsedCall(
      () async => (await _userSessionDao.getSession())?.toUserSession());

  @override
  Future<void> login(UserSession session) => makeErrorParsedCall(
      () => _userSessionDao.insertSession(session.toUserSessionDto()));
}

extension on UserSessionDto {
  UserSession toUserSession() => UserSession(
        email: email,
        password: password,
      );
}

extension on UserSession {
  UserSessionDto toUserSessionDto() => UserSessionDto(
        email: email,
        password: password,
      );
}
