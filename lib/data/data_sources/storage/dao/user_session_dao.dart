import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_example/data/data_sources/storage/local_storage.dart';
import 'package:flutter_example/data/data_sources/storage/tables/auth/user_session_table.dart';

import '../../models/auth/user_session_dto.dart';

part 'user_session_dao.g.dart';

@lazySingleton
@DriftAccessor(tables: [UserSessionTable])
class UserSessionDao extends DatabaseAccessor<LocalStorage>
    with _$UserSessionDaoMixin {
  UserSessionDao(super.db);

  Future<void> insertSession(UserSessionDto session) async {
    await userSessionTable.deleteAll();
    userSessionTable.insertOnConflictUpdate(UserSessionTableCompanion.insert(
      email: session.email,
      password: session.password,
    ));
  }

  Future<UserSessionDto?> getSession() {
    return select(userSessionTable).getSingleOrNull();
  }
}
