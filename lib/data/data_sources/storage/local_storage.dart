import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../models/auth/user_session_dto.dart';
import 'tables/auth/user_session_table.dart';
import 'tables/users/addresses_table.dart';
import 'tables/users/companies_table.dart';
import 'tables/users/geos_table.dart';
import 'tables/users/users_table.dart';
import 'views/indicators_view.dart';

part 'local_storage.g.dart';

@DriftDatabase(
  tables: [
    UserSessionTable,
    Geos,
    Companies,
    Addresses,
    Users,
  ],
  views: [
    IndicatorsView,
  ],
)
@singleton
class LocalStorage extends _$LocalStorage {
  LocalStorage() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (m, from, to) async {},
      );
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db.sqlite'));

      return NativeDatabase.createInBackground(file);
    });
