import 'package:drift/drift.dart';
import 'package:flutter_example/data/data_sources/storage/tables/users/geos_table.dart';

@DataClassName('AddressInsertData')
class Addresses extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get street => text()();
  TextColumn get suite => text()();
  TextColumn get city => text()();
  TextColumn get zipcode => text()();
  IntColumn get geoId => integer().references(Geos, #id)();
}
