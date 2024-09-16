import 'package:drift/drift.dart';

import '../../../models/auth/user_session_dto.dart';

@UseRowClass(UserSessionDto)
class UserSessionTable extends Table {
  TextColumn get email => text()();
  TextColumn get password => text()();

  @override
  Set<Column<Object>>? get primaryKey => {email};
}
