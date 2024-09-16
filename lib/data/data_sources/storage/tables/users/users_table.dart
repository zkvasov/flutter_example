import 'package:drift/drift.dart';

import 'addresses_table.dart';
import 'companies_table.dart';

@DataClassName('UserInsertData')
class Users extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get username => text()();
  TextColumn get email => text()();
  IntColumn get addressId => integer().references(Addresses, #id)();
  TextColumn get phone => text()();
  TextColumn get website => text()();
  IntColumn get companyId => integer().references(Companies, #id)();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
