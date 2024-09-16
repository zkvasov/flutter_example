import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

import '../../models/auth/user_session_dto.dart';
import '../local_storage.dart';
import '../tables/auth/user_session_table.dart';

part 'user_session_dao.g.dart';

@lazySingleton
@DriftAccessor(tables: [UserSessionTable])
class UserSessionDao extends DatabaseAccessor<LocalStorage>
    with _$UserSessionDaoMixin {
  UserSessionDao(super.db);

  Future<void> insertSession(UserSessionDto session) async {
    await userSessionTable.deleteAll();
    await userSessionTable.insertOnConflictUpdate(
      UserSessionTableCompanion.insert(
        email: session.email,
        password: session.password,
      ),
    );
  }

  Future<UserSessionDto?> getSession() =>
      select(userSessionTable).getSingleOrNull();
}
