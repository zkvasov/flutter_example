import 'package:flutter_example/data/data_sources/models/auth/user_session_dto.dart';
import 'package:flutter_example/data/data_sources/storage/dao/user_session_dao.dart';
import 'package:flutter_example/domain/repositories/auth_repository.dart';

import '../../domain/entities/auth/user_session.dart';
import '../core/repository/base_repository.dart';

class AuthRepositoryImpl extends BaseRepository implements AuthRepository {
  final UserSessionDao _userSessionDao;

  AuthRepositoryImpl(this._userSessionDao);

  @override
  Future<UserSession?> getUserSession() {
    return makeErrorParsedCall(() async {
      return (await _userSessionDao.getSession())?.toUserSession();
    });
  }

  @override
  Future<void> login(UserSession session) {
    return makeErrorParsedCall(() {
      return _userSessionDao.insertSession(session.toUserSessionDto());
    });
  }
}

extension on UserSessionDto {
  UserSession toUserSession() {
    return UserSession(
      email: email,
      password: password,
    );
  }
}

extension on UserSession {
  UserSessionDto toUserSessionDto() {
    return UserSessionDto(
      email: email,
      password: password,
    );
  }
}
