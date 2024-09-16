import 'package:drift/drift.dart';

@DataClassName('CompanyInsertData')
class Companies extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get catchPhrase => text()();
  TextColumn get bs => text()();
}
