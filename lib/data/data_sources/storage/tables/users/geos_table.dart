import 'package:drift/drift.dart';

@DataClassName('GeoInsertData')
class Geos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get lat => text()();
  TextColumn get lng => text()();
}
