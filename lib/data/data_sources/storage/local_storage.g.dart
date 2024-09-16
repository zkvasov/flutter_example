// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_storage.dart';

// ignore_for_file: type=lint
class $UserSessionTableTable extends UserSessionTable
    with TableInfo<$UserSessionTableTable, UserSessionDto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserSessionTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [email, password];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_session_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserSessionDto> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {email};
  @override
  UserSessionDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserSessionDto(
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
    );
  }

  @override
  $UserSessionTableTable createAlias(String alias) {
    return $UserSessionTableTable(attachedDatabase, alias);
  }
}

class UserSessionTableCompanion extends UpdateCompanion<UserSessionDto> {
  final Value<String> email;
  final Value<String> password;
  final Value<int> rowid;
  const UserSessionTableCompanion({
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserSessionTableCompanion.insert({
    required String email,
    required String password,
    this.rowid = const Value.absent(),
  })  : email = Value(email),
        password = Value(password);
  static Insertable<UserSessionDto> custom({
    Expression<String>? email,
    Expression<String>? password,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserSessionTableCompanion copyWith(
      {Value<String>? email, Value<String>? password, Value<int>? rowid}) {
    return UserSessionTableCompanion(
      email: email ?? this.email,
      password: password ?? this.password,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserSessionTableCompanion(')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GeosTable extends Geos with TableInfo<$GeosTable, GeoInsertData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GeosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _latMeta = const VerificationMeta('lat');
  @override
  late final GeneratedColumn<String> lat = GeneratedColumn<String>(
      'lat', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lngMeta = const VerificationMeta('lng');
  @override
  late final GeneratedColumn<String> lng = GeneratedColumn<String>(
      'lng', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, lat, lng];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'geos';
  @override
  VerificationContext validateIntegrity(Insertable<GeoInsertData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('lat')) {
      context.handle(
          _latMeta, lat.isAcceptableOrUnknown(data['lat']!, _latMeta));
    } else if (isInserting) {
      context.missing(_latMeta);
    }
    if (data.containsKey('lng')) {
      context.handle(
          _lngMeta, lng.isAcceptableOrUnknown(data['lng']!, _lngMeta));
    } else if (isInserting) {
      context.missing(_lngMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GeoInsertData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GeoInsertData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      lat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lat'])!,
      lng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lng'])!,
    );
  }

  @override
  $GeosTable createAlias(String alias) {
    return $GeosTable(attachedDatabase, alias);
  }
}

class GeoInsertData extends DataClass implements Insertable<GeoInsertData> {
  final int id;
  final String lat;
  final String lng;
  const GeoInsertData({required this.id, required this.lat, required this.lng});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['lat'] = Variable<String>(lat);
    map['lng'] = Variable<String>(lng);
    return map;
  }

  GeosCompanion toCompanion(bool nullToAbsent) {
    return GeosCompanion(
      id: Value(id),
      lat: Value(lat),
      lng: Value(lng),
    );
  }

  factory GeoInsertData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GeoInsertData(
      id: serializer.fromJson<int>(json['id']),
      lat: serializer.fromJson<String>(json['lat']),
      lng: serializer.fromJson<String>(json['lng']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'lat': serializer.toJson<String>(lat),
      'lng': serializer.toJson<String>(lng),
    };
  }

  GeoInsertData copyWith({int? id, String? lat, String? lng}) => GeoInsertData(
        id: id ?? this.id,
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
      );
  GeoInsertData copyWithCompanion(GeosCompanion data) {
    return GeoInsertData(
      id: data.id.present ? data.id.value : this.id,
      lat: data.lat.present ? data.lat.value : this.lat,
      lng: data.lng.present ? data.lng.value : this.lng,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GeoInsertData(')
          ..write('id: $id, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lat, lng);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GeoInsertData &&
          other.id == this.id &&
          other.lat == this.lat &&
          other.lng == this.lng);
}

class GeosCompanion extends UpdateCompanion<GeoInsertData> {
  final Value<int> id;
  final Value<String> lat;
  final Value<String> lng;
  const GeosCompanion({
    this.id = const Value.absent(),
    this.lat = const Value.absent(),
    this.lng = const Value.absent(),
  });
  GeosCompanion.insert({
    this.id = const Value.absent(),
    required String lat,
    required String lng,
  })  : lat = Value(lat),
        lng = Value(lng);
  static Insertable<GeoInsertData> custom({
    Expression<int>? id,
    Expression<String>? lat,
    Expression<String>? lng,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lat != null) 'lat': lat,
      if (lng != null) 'lng': lng,
    });
  }

  GeosCompanion copyWith(
      {Value<int>? id, Value<String>? lat, Value<String>? lng}) {
    return GeosCompanion(
      id: id ?? this.id,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (lat.present) {
      map['lat'] = Variable<String>(lat.value);
    }
    if (lng.present) {
      map['lng'] = Variable<String>(lng.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GeosCompanion(')
          ..write('id: $id, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng')
          ..write(')'))
        .toString();
  }
}

class $CompaniesTable extends Companies
    with TableInfo<$CompaniesTable, CompanyInsertData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompaniesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _catchPhraseMeta =
      const VerificationMeta('catchPhrase');
  @override
  late final GeneratedColumn<String> catchPhrase = GeneratedColumn<String>(
      'catch_phrase', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bsMeta = const VerificationMeta('bs');
  @override
  late final GeneratedColumn<String> bs = GeneratedColumn<String>(
      'bs', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, catchPhrase, bs];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'companies';
  @override
  VerificationContext validateIntegrity(Insertable<CompanyInsertData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('catch_phrase')) {
      context.handle(
          _catchPhraseMeta,
          catchPhrase.isAcceptableOrUnknown(
              data['catch_phrase']!, _catchPhraseMeta));
    } else if (isInserting) {
      context.missing(_catchPhraseMeta);
    }
    if (data.containsKey('bs')) {
      context.handle(_bsMeta, bs.isAcceptableOrUnknown(data['bs']!, _bsMeta));
    } else if (isInserting) {
      context.missing(_bsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CompanyInsertData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompanyInsertData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      catchPhrase: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}catch_phrase'])!,
      bs: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bs'])!,
    );
  }

  @override
  $CompaniesTable createAlias(String alias) {
    return $CompaniesTable(attachedDatabase, alias);
  }
}

class CompanyInsertData extends DataClass
    implements Insertable<CompanyInsertData> {
  final int id;
  final String name;
  final String catchPhrase;
  final String bs;
  const CompanyInsertData(
      {required this.id,
      required this.name,
      required this.catchPhrase,
      required this.bs});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['catch_phrase'] = Variable<String>(catchPhrase);
    map['bs'] = Variable<String>(bs);
    return map;
  }

  CompaniesCompanion toCompanion(bool nullToAbsent) {
    return CompaniesCompanion(
      id: Value(id),
      name: Value(name),
      catchPhrase: Value(catchPhrase),
      bs: Value(bs),
    );
  }

  factory CompanyInsertData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompanyInsertData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      catchPhrase: serializer.fromJson<String>(json['catchPhrase']),
      bs: serializer.fromJson<String>(json['bs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'catchPhrase': serializer.toJson<String>(catchPhrase),
      'bs': serializer.toJson<String>(bs),
    };
  }

  CompanyInsertData copyWith(
          {int? id, String? name, String? catchPhrase, String? bs}) =>
      CompanyInsertData(
        id: id ?? this.id,
        name: name ?? this.name,
        catchPhrase: catchPhrase ?? this.catchPhrase,
        bs: bs ?? this.bs,
      );
  CompanyInsertData copyWithCompanion(CompaniesCompanion data) {
    return CompanyInsertData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      catchPhrase:
          data.catchPhrase.present ? data.catchPhrase.value : this.catchPhrase,
      bs: data.bs.present ? data.bs.value : this.bs,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CompanyInsertData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('catchPhrase: $catchPhrase, ')
          ..write('bs: $bs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, catchPhrase, bs);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompanyInsertData &&
          other.id == this.id &&
          other.name == this.name &&
          other.catchPhrase == this.catchPhrase &&
          other.bs == this.bs);
}

class CompaniesCompanion extends UpdateCompanion<CompanyInsertData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> catchPhrase;
  final Value<String> bs;
  const CompaniesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.catchPhrase = const Value.absent(),
    this.bs = const Value.absent(),
  });
  CompaniesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String catchPhrase,
    required String bs,
  })  : name = Value(name),
        catchPhrase = Value(catchPhrase),
        bs = Value(bs);
  static Insertable<CompanyInsertData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? catchPhrase,
    Expression<String>? bs,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (catchPhrase != null) 'catch_phrase': catchPhrase,
      if (bs != null) 'bs': bs,
    });
  }

  CompaniesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? catchPhrase,
      Value<String>? bs}) {
    return CompaniesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      catchPhrase: catchPhrase ?? this.catchPhrase,
      bs: bs ?? this.bs,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (catchPhrase.present) {
      map['catch_phrase'] = Variable<String>(catchPhrase.value);
    }
    if (bs.present) {
      map['bs'] = Variable<String>(bs.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompaniesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('catchPhrase: $catchPhrase, ')
          ..write('bs: $bs')
          ..write(')'))
        .toString();
  }
}

class $AddressesTable extends Addresses
    with TableInfo<$AddressesTable, AddressInsertData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AddressesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _streetMeta = const VerificationMeta('street');
  @override
  late final GeneratedColumn<String> street = GeneratedColumn<String>(
      'street', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _suiteMeta = const VerificationMeta('suite');
  @override
  late final GeneratedColumn<String> suite = GeneratedColumn<String>(
      'suite', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _zipcodeMeta =
      const VerificationMeta('zipcode');
  @override
  late final GeneratedColumn<String> zipcode = GeneratedColumn<String>(
      'zipcode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _geoIdMeta = const VerificationMeta('geoId');
  @override
  late final GeneratedColumn<int> geoId = GeneratedColumn<int>(
      'geo_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES geos (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, street, suite, city, zipcode, geoId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'addresses';
  @override
  VerificationContext validateIntegrity(Insertable<AddressInsertData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street']!, _streetMeta));
    } else if (isInserting) {
      context.missing(_streetMeta);
    }
    if (data.containsKey('suite')) {
      context.handle(
          _suiteMeta, suite.isAcceptableOrUnknown(data['suite']!, _suiteMeta));
    } else if (isInserting) {
      context.missing(_suiteMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('zipcode')) {
      context.handle(_zipcodeMeta,
          zipcode.isAcceptableOrUnknown(data['zipcode']!, _zipcodeMeta));
    } else if (isInserting) {
      context.missing(_zipcodeMeta);
    }
    if (data.containsKey('geo_id')) {
      context.handle(
          _geoIdMeta, geoId.isAcceptableOrUnknown(data['geo_id']!, _geoIdMeta));
    } else if (isInserting) {
      context.missing(_geoIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AddressInsertData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AddressInsertData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      street: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}street'])!,
      suite: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}suite'])!,
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city'])!,
      zipcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}zipcode'])!,
      geoId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}geo_id'])!,
    );
  }

  @override
  $AddressesTable createAlias(String alias) {
    return $AddressesTable(attachedDatabase, alias);
  }
}

class AddressInsertData extends DataClass
    implements Insertable<AddressInsertData> {
  final int id;
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final int geoId;
  const AddressInsertData(
      {required this.id,
      required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geoId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['street'] = Variable<String>(street);
    map['suite'] = Variable<String>(suite);
    map['city'] = Variable<String>(city);
    map['zipcode'] = Variable<String>(zipcode);
    map['geo_id'] = Variable<int>(geoId);
    return map;
  }

  AddressesCompanion toCompanion(bool nullToAbsent) {
    return AddressesCompanion(
      id: Value(id),
      street: Value(street),
      suite: Value(suite),
      city: Value(city),
      zipcode: Value(zipcode),
      geoId: Value(geoId),
    );
  }

  factory AddressInsertData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AddressInsertData(
      id: serializer.fromJson<int>(json['id']),
      street: serializer.fromJson<String>(json['street']),
      suite: serializer.fromJson<String>(json['suite']),
      city: serializer.fromJson<String>(json['city']),
      zipcode: serializer.fromJson<String>(json['zipcode']),
      geoId: serializer.fromJson<int>(json['geoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'street': serializer.toJson<String>(street),
      'suite': serializer.toJson<String>(suite),
      'city': serializer.toJson<String>(city),
      'zipcode': serializer.toJson<String>(zipcode),
      'geoId': serializer.toJson<int>(geoId),
    };
  }

  AddressInsertData copyWith(
          {int? id,
          String? street,
          String? suite,
          String? city,
          String? zipcode,
          int? geoId}) =>
      AddressInsertData(
        id: id ?? this.id,
        street: street ?? this.street,
        suite: suite ?? this.suite,
        city: city ?? this.city,
        zipcode: zipcode ?? this.zipcode,
        geoId: geoId ?? this.geoId,
      );
  AddressInsertData copyWithCompanion(AddressesCompanion data) {
    return AddressInsertData(
      id: data.id.present ? data.id.value : this.id,
      street: data.street.present ? data.street.value : this.street,
      suite: data.suite.present ? data.suite.value : this.suite,
      city: data.city.present ? data.city.value : this.city,
      zipcode: data.zipcode.present ? data.zipcode.value : this.zipcode,
      geoId: data.geoId.present ? data.geoId.value : this.geoId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AddressInsertData(')
          ..write('id: $id, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('geoId: $geoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, street, suite, city, zipcode, geoId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddressInsertData &&
          other.id == this.id &&
          other.street == this.street &&
          other.suite == this.suite &&
          other.city == this.city &&
          other.zipcode == this.zipcode &&
          other.geoId == this.geoId);
}

class AddressesCompanion extends UpdateCompanion<AddressInsertData> {
  final Value<int> id;
  final Value<String> street;
  final Value<String> suite;
  final Value<String> city;
  final Value<String> zipcode;
  final Value<int> geoId;
  const AddressesCompanion({
    this.id = const Value.absent(),
    this.street = const Value.absent(),
    this.suite = const Value.absent(),
    this.city = const Value.absent(),
    this.zipcode = const Value.absent(),
    this.geoId = const Value.absent(),
  });
  AddressesCompanion.insert({
    this.id = const Value.absent(),
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    required int geoId,
  })  : street = Value(street),
        suite = Value(suite),
        city = Value(city),
        zipcode = Value(zipcode),
        geoId = Value(geoId);
  static Insertable<AddressInsertData> custom({
    Expression<int>? id,
    Expression<String>? street,
    Expression<String>? suite,
    Expression<String>? city,
    Expression<String>? zipcode,
    Expression<int>? geoId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (street != null) 'street': street,
      if (suite != null) 'suite': suite,
      if (city != null) 'city': city,
      if (zipcode != null) 'zipcode': zipcode,
      if (geoId != null) 'geo_id': geoId,
    });
  }

  AddressesCompanion copyWith(
      {Value<int>? id,
      Value<String>? street,
      Value<String>? suite,
      Value<String>? city,
      Value<String>? zipcode,
      Value<int>? geoId}) {
    return AddressesCompanion(
      id: id ?? this.id,
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      geoId: geoId ?? this.geoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (street.present) {
      map['street'] = Variable<String>(street.value);
    }
    if (suite.present) {
      map['suite'] = Variable<String>(suite.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (zipcode.present) {
      map['zipcode'] = Variable<String>(zipcode.value);
    }
    if (geoId.present) {
      map['geo_id'] = Variable<int>(geoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressesCompanion(')
          ..write('id: $id, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('geoId: $geoId')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, UserInsertData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressIdMeta =
      const VerificationMeta('addressId');
  @override
  late final GeneratedColumn<int> addressId = GeneratedColumn<int>(
      'address_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES addresses (id)'));
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _websiteMeta =
      const VerificationMeta('website');
  @override
  late final GeneratedColumn<String> website = GeneratedColumn<String>(
      'website', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _companyIdMeta =
      const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
      'company_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES companies (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, username, email, addressId, phone, website, companyId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<UserInsertData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('address_id')) {
      context.handle(_addressIdMeta,
          addressId.isAcceptableOrUnknown(data['address_id']!, _addressIdMeta));
    } else if (isInserting) {
      context.missing(_addressIdMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    } else if (isInserting) {
      context.missing(_websiteMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserInsertData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserInsertData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      addressId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}address_id'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      website: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}website'])!,
      companyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}company_id'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class UserInsertData extends DataClass implements Insertable<UserInsertData> {
  final int id;
  final String name;
  final String username;
  final String email;
  final int addressId;
  final String phone;
  final String website;
  final int companyId;
  const UserInsertData(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.addressId,
      required this.phone,
      required this.website,
      required this.companyId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['username'] = Variable<String>(username);
    map['email'] = Variable<String>(email);
    map['address_id'] = Variable<int>(addressId);
    map['phone'] = Variable<String>(phone);
    map['website'] = Variable<String>(website);
    map['company_id'] = Variable<int>(companyId);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      name: Value(name),
      username: Value(username),
      email: Value(email),
      addressId: Value(addressId),
      phone: Value(phone),
      website: Value(website),
      companyId: Value(companyId),
    );
  }

  factory UserInsertData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserInsertData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      username: serializer.fromJson<String>(json['username']),
      email: serializer.fromJson<String>(json['email']),
      addressId: serializer.fromJson<int>(json['addressId']),
      phone: serializer.fromJson<String>(json['phone']),
      website: serializer.fromJson<String>(json['website']),
      companyId: serializer.fromJson<int>(json['companyId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'username': serializer.toJson<String>(username),
      'email': serializer.toJson<String>(email),
      'addressId': serializer.toJson<int>(addressId),
      'phone': serializer.toJson<String>(phone),
      'website': serializer.toJson<String>(website),
      'companyId': serializer.toJson<int>(companyId),
    };
  }

  UserInsertData copyWith(
          {int? id,
          String? name,
          String? username,
          String? email,
          int? addressId,
          String? phone,
          String? website,
          int? companyId}) =>
      UserInsertData(
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        addressId: addressId ?? this.addressId,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        companyId: companyId ?? this.companyId,
      );
  UserInsertData copyWithCompanion(UsersCompanion data) {
    return UserInsertData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      username: data.username.present ? data.username.value : this.username,
      email: data.email.present ? data.email.value : this.email,
      addressId: data.addressId.present ? data.addressId.value : this.addressId,
      phone: data.phone.present ? data.phone.value : this.phone,
      website: data.website.present ? data.website.value : this.website,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserInsertData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('addressId: $addressId, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('companyId: $companyId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, username, email, addressId, phone, website, companyId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserInsertData &&
          other.id == this.id &&
          other.name == this.name &&
          other.username == this.username &&
          other.email == this.email &&
          other.addressId == this.addressId &&
          other.phone == this.phone &&
          other.website == this.website &&
          other.companyId == this.companyId);
}

class UsersCompanion extends UpdateCompanion<UserInsertData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> username;
  final Value<String> email;
  final Value<int> addressId;
  final Value<String> phone;
  final Value<String> website;
  final Value<int> companyId;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.addressId = const Value.absent(),
    this.phone = const Value.absent(),
    this.website = const Value.absent(),
    this.companyId = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String username,
    required String email,
    required int addressId,
    required String phone,
    required String website,
    required int companyId,
  })  : name = Value(name),
        username = Value(username),
        email = Value(email),
        addressId = Value(addressId),
        phone = Value(phone),
        website = Value(website),
        companyId = Value(companyId);
  static Insertable<UserInsertData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? username,
    Expression<String>? email,
    Expression<int>? addressId,
    Expression<String>? phone,
    Expression<String>? website,
    Expression<int>? companyId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (username != null) 'username': username,
      if (email != null) 'email': email,
      if (addressId != null) 'address_id': addressId,
      if (phone != null) 'phone': phone,
      if (website != null) 'website': website,
      if (companyId != null) 'company_id': companyId,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? username,
      Value<String>? email,
      Value<int>? addressId,
      Value<String>? phone,
      Value<String>? website,
      Value<int>? companyId}) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      addressId: addressId ?? this.addressId,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      companyId: companyId ?? this.companyId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (addressId.present) {
      map['address_id'] = Variable<int>(addressId.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<int>(companyId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('addressId: $addressId, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('companyId: $companyId')
          ..write(')'))
        .toString();
  }
}

class IndicatorsViewData extends DataClass {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final String lat;
  final String lng;
  final String name1;
  final String catchPhrase;
  final String bs;
  const IndicatorsViewData(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.website,
      required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.lat,
      required this.lng,
      required this.name1,
      required this.catchPhrase,
      required this.bs});
  factory IndicatorsViewData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return IndicatorsViewData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      username: serializer.fromJson<String>(json['username']),
      email: serializer.fromJson<String>(json['email']),
      phone: serializer.fromJson<String>(json['phone']),
      website: serializer.fromJson<String>(json['website']),
      street: serializer.fromJson<String>(json['street']),
      suite: serializer.fromJson<String>(json['suite']),
      city: serializer.fromJson<String>(json['city']),
      zipcode: serializer.fromJson<String>(json['zipcode']),
      lat: serializer.fromJson<String>(json['lat']),
      lng: serializer.fromJson<String>(json['lng']),
      name1: serializer.fromJson<String>(json['name1']),
      catchPhrase: serializer.fromJson<String>(json['catchPhrase']),
      bs: serializer.fromJson<String>(json['bs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'username': serializer.toJson<String>(username),
      'email': serializer.toJson<String>(email),
      'phone': serializer.toJson<String>(phone),
      'website': serializer.toJson<String>(website),
      'street': serializer.toJson<String>(street),
      'suite': serializer.toJson<String>(suite),
      'city': serializer.toJson<String>(city),
      'zipcode': serializer.toJson<String>(zipcode),
      'lat': serializer.toJson<String>(lat),
      'lng': serializer.toJson<String>(lng),
      'name1': serializer.toJson<String>(name1),
      'catchPhrase': serializer.toJson<String>(catchPhrase),
      'bs': serializer.toJson<String>(bs),
    };
  }

  IndicatorsViewData copyWith(
          {int? id,
          String? name,
          String? username,
          String? email,
          String? phone,
          String? website,
          String? street,
          String? suite,
          String? city,
          String? zipcode,
          String? lat,
          String? lng,
          String? name1,
          String? catchPhrase,
          String? bs}) =>
      IndicatorsViewData(
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        street: street ?? this.street,
        suite: suite ?? this.suite,
        city: city ?? this.city,
        zipcode: zipcode ?? this.zipcode,
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
        name1: name1 ?? this.name1,
        catchPhrase: catchPhrase ?? this.catchPhrase,
        bs: bs ?? this.bs,
      );
  @override
  String toString() {
    return (StringBuffer('IndicatorsViewData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('city: $city, ')
          ..write('zipcode: $zipcode, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('name1: $name1, ')
          ..write('catchPhrase: $catchPhrase, ')
          ..write('bs: $bs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, username, email, phone, website,
      street, suite, city, zipcode, lat, lng, name1, catchPhrase, bs);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IndicatorsViewData &&
          other.id == this.id &&
          other.name == this.name &&
          other.username == this.username &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.website == this.website &&
          other.street == this.street &&
          other.suite == this.suite &&
          other.city == this.city &&
          other.zipcode == this.zipcode &&
          other.lat == this.lat &&
          other.lng == this.lng &&
          other.name1 == this.name1 &&
          other.catchPhrase == this.catchPhrase &&
          other.bs == this.bs);
}

class $IndicatorsViewView
    extends ViewInfo<$IndicatorsViewView, IndicatorsViewData>
    implements HasResultSet {
  final String? _alias;
  @override
  final _$LocalStorage attachedDatabase;
  $IndicatorsViewView(this.attachedDatabase, [this._alias]);
  $UsersTable get users => attachedDatabase.users.createAlias('t0');
  $AddressesTable get addresses => attachedDatabase.addresses.createAlias('t1');
  $GeosTable get geos => attachedDatabase.geos.createAlias('t2');
  $CompaniesTable get companies => attachedDatabase.companies.createAlias('t3');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        username,
        email,
        phone,
        website,
        street,
        suite,
        city,
        zipcode,
        lat,
        lng,
        name1,
        catchPhrase,
        bs
      ];
  @override
  String get aliasedName => _alias ?? entityName;
  @override
  String get entityName => 'indicators_view';
  @override
  Map<SqlDialect, String>? get createViewStatements => null;
  @override
  $IndicatorsViewView get asDslTable => this;
  @override
  IndicatorsViewData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return IndicatorsViewData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      website: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}website'])!,
      street: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}street'])!,
      suite: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}suite'])!,
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city'])!,
      zipcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}zipcode'])!,
      lat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lat'])!,
      lng: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lng'])!,
      name1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name1'])!,
      catchPhrase: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}catch_phrase'])!,
      bs: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bs'])!,
    );
  }

  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      generatedAs: GeneratedAs(users.id, false), type: DriftSqlType.int);
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      generatedAs: GeneratedAs(users.name, false), type: DriftSqlType.string);
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      generatedAs: GeneratedAs(users.username, false),
      type: DriftSqlType.string);
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      generatedAs: GeneratedAs(users.email, false), type: DriftSqlType.string);
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      generatedAs: GeneratedAs(users.phone, false), type: DriftSqlType.string);
  late final GeneratedColumn<String> website = GeneratedColumn<String>(
      'website', aliasedName, false,
      generatedAs: GeneratedAs(users.website, false),
      type: DriftSqlType.string);
  late final GeneratedColumn<String> street = GeneratedColumn<String>(
      'street', aliasedName, false,
      generatedAs: GeneratedAs(addresses.street, false),
      type: DriftSqlType.string);
  late final GeneratedColumn<String> suite = GeneratedColumn<String>(
      'suite', aliasedName, false,
      generatedAs: GeneratedAs(addresses.suite, false),
      type: DriftSqlType.string);
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, false,
      generatedAs: GeneratedAs(addresses.city, false),
      type: DriftSqlType.string);
  late final GeneratedColumn<String> zipcode = GeneratedColumn<String>(
      'zipcode', aliasedName, false,
      generatedAs: GeneratedAs(addresses.zipcode, false),
      type: DriftSqlType.string);
  late final GeneratedColumn<String> lat = GeneratedColumn<String>(
      'lat', aliasedName, false,
      generatedAs: GeneratedAs(geos.lat, false), type: DriftSqlType.string);
  late final GeneratedColumn<String> lng = GeneratedColumn<String>(
      'lng', aliasedName, false,
      generatedAs: GeneratedAs(geos.lng, false), type: DriftSqlType.string);
  late final GeneratedColumn<String> name1 = GeneratedColumn<String>(
      'name1', aliasedName, false,
      generatedAs: GeneratedAs(companies.name, false),
      type: DriftSqlType.string);
  late final GeneratedColumn<String> catchPhrase = GeneratedColumn<String>(
      'catch_phrase', aliasedName, false,
      generatedAs: GeneratedAs(companies.catchPhrase, false),
      type: DriftSqlType.string);
  late final GeneratedColumn<String> bs = GeneratedColumn<String>(
      'bs', aliasedName, false,
      generatedAs: GeneratedAs(companies.bs, false), type: DriftSqlType.string);
  @override
  $IndicatorsViewView createAlias(String alias) {
    return $IndicatorsViewView(attachedDatabase, alias);
  }

  @override
  Query? get query =>
      (attachedDatabase.selectOnly(users)..addColumns($columns)).join([
        innerJoin(addresses, addresses.id.equalsExp(users.addressId)),
        innerJoin(geos, geos.id.equalsExp(addresses.geoId)),
        innerJoin(companies, companies.id.equalsExp(users.companyId))
      ]);
  @override
  Set<String> get readTables =>
      const {'users', 'addresses', 'geos', 'companies'};
}

abstract class _$LocalStorage extends GeneratedDatabase {
  _$LocalStorage(QueryExecutor e) : super(e);
  $LocalStorageManager get managers => $LocalStorageManager(this);
  late final $UserSessionTableTable userSessionTable =
      $UserSessionTableTable(this);
  late final $GeosTable geos = $GeosTable(this);
  late final $CompaniesTable companies = $CompaniesTable(this);
  late final $AddressesTable addresses = $AddressesTable(this);
  late final $UsersTable users = $UsersTable(this);
  late final $IndicatorsViewView indicatorsView = $IndicatorsViewView(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userSessionTable, geos, companies, addresses, users, indicatorsView];
}

typedef $$UserSessionTableTableCreateCompanionBuilder
    = UserSessionTableCompanion Function({
  required String email,
  required String password,
  Value<int> rowid,
});
typedef $$UserSessionTableTableUpdateCompanionBuilder
    = UserSessionTableCompanion Function({
  Value<String> email,
  Value<String> password,
  Value<int> rowid,
});

class $$UserSessionTableTableFilterComposer
    extends FilterComposer<_$LocalStorage, $UserSessionTableTable> {
  $$UserSessionTableTableFilterComposer(super.$state);
  ColumnFilters<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get password => $state.composableBuilder(
      column: $state.table.password,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UserSessionTableTableOrderingComposer
    extends OrderingComposer<_$LocalStorage, $UserSessionTableTable> {
  $$UserSessionTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get password => $state.composableBuilder(
      column: $state.table.password,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$UserSessionTableTableTableManager extends RootTableManager<
    _$LocalStorage,
    $UserSessionTableTable,
    UserSessionDto,
    $$UserSessionTableTableFilterComposer,
    $$UserSessionTableTableOrderingComposer,
    $$UserSessionTableTableCreateCompanionBuilder,
    $$UserSessionTableTableUpdateCompanionBuilder,
    (
      UserSessionDto,
      BaseReferences<_$LocalStorage, $UserSessionTableTable, UserSessionDto>
    ),
    UserSessionDto,
    PrefetchHooks Function()> {
  $$UserSessionTableTableTableManager(
      _$LocalStorage db, $UserSessionTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UserSessionTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UserSessionTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> email = const Value.absent(),
            Value<String> password = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserSessionTableCompanion(
            email: email,
            password: password,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String email,
            required String password,
            Value<int> rowid = const Value.absent(),
          }) =>
              UserSessionTableCompanion.insert(
            email: email,
            password: password,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserSessionTableTableProcessedTableManager = ProcessedTableManager<
    _$LocalStorage,
    $UserSessionTableTable,
    UserSessionDto,
    $$UserSessionTableTableFilterComposer,
    $$UserSessionTableTableOrderingComposer,
    $$UserSessionTableTableCreateCompanionBuilder,
    $$UserSessionTableTableUpdateCompanionBuilder,
    (
      UserSessionDto,
      BaseReferences<_$LocalStorage, $UserSessionTableTable, UserSessionDto>
    ),
    UserSessionDto,
    PrefetchHooks Function()>;
typedef $$GeosTableCreateCompanionBuilder = GeosCompanion Function({
  Value<int> id,
  required String lat,
  required String lng,
});
typedef $$GeosTableUpdateCompanionBuilder = GeosCompanion Function({
  Value<int> id,
  Value<String> lat,
  Value<String> lng,
});

final class $$GeosTableReferences
    extends BaseReferences<_$LocalStorage, $GeosTable, GeoInsertData> {
  $$GeosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$AddressesTable, List<AddressInsertData>>
      _addressesRefsTable(_$LocalStorage db) =>
          MultiTypedResultKey.fromTable(db.addresses,
              aliasName: $_aliasNameGenerator(db.geos.id, db.addresses.geoId));

  $$AddressesTableProcessedTableManager get addressesRefs {
    final manager = $$AddressesTableTableManager($_db, $_db.addresses)
        .filter((f) => f.geoId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_addressesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$GeosTableFilterComposer
    extends FilterComposer<_$LocalStorage, $GeosTable> {
  $$GeosTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get lat => $state.composableBuilder(
      column: $state.table.lat,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get lng => $state.composableBuilder(
      column: $state.table.lng,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter addressesRefs(
      ComposableFilter Function($$AddressesTableFilterComposer f) f) {
    final $$AddressesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.addresses,
        getReferencedColumn: (t) => t.geoId,
        builder: (joinBuilder, parentComposers) =>
            $$AddressesTableFilterComposer(ComposerState(
                $state.db, $state.db.addresses, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$GeosTableOrderingComposer
    extends OrderingComposer<_$LocalStorage, $GeosTable> {
  $$GeosTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get lat => $state.composableBuilder(
      column: $state.table.lat,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get lng => $state.composableBuilder(
      column: $state.table.lng,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$GeosTableTableManager extends RootTableManager<
    _$LocalStorage,
    $GeosTable,
    GeoInsertData,
    $$GeosTableFilterComposer,
    $$GeosTableOrderingComposer,
    $$GeosTableCreateCompanionBuilder,
    $$GeosTableUpdateCompanionBuilder,
    (GeoInsertData, $$GeosTableReferences),
    GeoInsertData,
    PrefetchHooks Function({bool addressesRefs})> {
  $$GeosTableTableManager(_$LocalStorage db, $GeosTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$GeosTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$GeosTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> lat = const Value.absent(),
            Value<String> lng = const Value.absent(),
          }) =>
              GeosCompanion(
            id: id,
            lat: lat,
            lng: lng,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String lat,
            required String lng,
          }) =>
              GeosCompanion.insert(
            id: id,
            lat: lat,
            lng: lng,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$GeosTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({addressesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (addressesRefs) db.addresses],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (addressesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$GeosTableReferences._addressesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$GeosTableReferences(db, table, p0).addressesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.geoId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$GeosTableProcessedTableManager = ProcessedTableManager<
    _$LocalStorage,
    $GeosTable,
    GeoInsertData,
    $$GeosTableFilterComposer,
    $$GeosTableOrderingComposer,
    $$GeosTableCreateCompanionBuilder,
    $$GeosTableUpdateCompanionBuilder,
    (GeoInsertData, $$GeosTableReferences),
    GeoInsertData,
    PrefetchHooks Function({bool addressesRefs})>;
typedef $$CompaniesTableCreateCompanionBuilder = CompaniesCompanion Function({
  Value<int> id,
  required String name,
  required String catchPhrase,
  required String bs,
});
typedef $$CompaniesTableUpdateCompanionBuilder = CompaniesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> catchPhrase,
  Value<String> bs,
});

final class $$CompaniesTableReferences
    extends BaseReferences<_$LocalStorage, $CompaniesTable, CompanyInsertData> {
  $$CompaniesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$UsersTable, List<UserInsertData>> _usersRefsTable(
          _$LocalStorage db) =>
      MultiTypedResultKey.fromTable(db.users,
          aliasName: $_aliasNameGenerator(db.companies.id, db.users.companyId));

  $$UsersTableProcessedTableManager get usersRefs {
    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.companyId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_usersRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$CompaniesTableFilterComposer
    extends FilterComposer<_$LocalStorage, $CompaniesTable> {
  $$CompaniesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get catchPhrase => $state.composableBuilder(
      column: $state.table.catchPhrase,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get bs => $state.composableBuilder(
      column: $state.table.bs,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter usersRefs(
      ComposableFilter Function($$UsersTableFilterComposer f) f) {
    final $$UsersTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.users,
        getReferencedColumn: (t) => t.companyId,
        builder: (joinBuilder, parentComposers) => $$UsersTableFilterComposer(
            ComposerState(
                $state.db, $state.db.users, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$CompaniesTableOrderingComposer
    extends OrderingComposer<_$LocalStorage, $CompaniesTable> {
  $$CompaniesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get catchPhrase => $state.composableBuilder(
      column: $state.table.catchPhrase,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get bs => $state.composableBuilder(
      column: $state.table.bs,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$CompaniesTableTableManager extends RootTableManager<
    _$LocalStorage,
    $CompaniesTable,
    CompanyInsertData,
    $$CompaniesTableFilterComposer,
    $$CompaniesTableOrderingComposer,
    $$CompaniesTableCreateCompanionBuilder,
    $$CompaniesTableUpdateCompanionBuilder,
    (CompanyInsertData, $$CompaniesTableReferences),
    CompanyInsertData,
    PrefetchHooks Function({bool usersRefs})> {
  $$CompaniesTableTableManager(_$LocalStorage db, $CompaniesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CompaniesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CompaniesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> catchPhrase = const Value.absent(),
            Value<String> bs = const Value.absent(),
          }) =>
              CompaniesCompanion(
            id: id,
            name: name,
            catchPhrase: catchPhrase,
            bs: bs,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String catchPhrase,
            required String bs,
          }) =>
              CompaniesCompanion.insert(
            id: id,
            name: name,
            catchPhrase: catchPhrase,
            bs: bs,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CompaniesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({usersRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (usersRefs) db.users],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (usersRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$CompaniesTableReferences._usersRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CompaniesTableReferences(db, table, p0).usersRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.companyId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$CompaniesTableProcessedTableManager = ProcessedTableManager<
    _$LocalStorage,
    $CompaniesTable,
    CompanyInsertData,
    $$CompaniesTableFilterComposer,
    $$CompaniesTableOrderingComposer,
    $$CompaniesTableCreateCompanionBuilder,
    $$CompaniesTableUpdateCompanionBuilder,
    (CompanyInsertData, $$CompaniesTableReferences),
    CompanyInsertData,
    PrefetchHooks Function({bool usersRefs})>;
typedef $$AddressesTableCreateCompanionBuilder = AddressesCompanion Function({
  Value<int> id,
  required String street,
  required String suite,
  required String city,
  required String zipcode,
  required int geoId,
});
typedef $$AddressesTableUpdateCompanionBuilder = AddressesCompanion Function({
  Value<int> id,
  Value<String> street,
  Value<String> suite,
  Value<String> city,
  Value<String> zipcode,
  Value<int> geoId,
});

final class $$AddressesTableReferences
    extends BaseReferences<_$LocalStorage, $AddressesTable, AddressInsertData> {
  $$AddressesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $GeosTable _geoIdTable(_$LocalStorage db) =>
      db.geos.createAlias($_aliasNameGenerator(db.addresses.geoId, db.geos.id));

  $$GeosTableProcessedTableManager? get geoId {
    if ($_item.geoId == null) return null;
    final manager = $$GeosTableTableManager($_db, $_db.geos)
        .filter((f) => f.id($_item.geoId!));
    final item = $_typedResult.readTableOrNull(_geoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$UsersTable, List<UserInsertData>> _usersRefsTable(
          _$LocalStorage db) =>
      MultiTypedResultKey.fromTable(db.users,
          aliasName: $_aliasNameGenerator(db.addresses.id, db.users.addressId));

  $$UsersTableProcessedTableManager get usersRefs {
    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.addressId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_usersRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$AddressesTableFilterComposer
    extends FilterComposer<_$LocalStorage, $AddressesTable> {
  $$AddressesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get street => $state.composableBuilder(
      column: $state.table.street,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get suite => $state.composableBuilder(
      column: $state.table.suite,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get city => $state.composableBuilder(
      column: $state.table.city,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get zipcode => $state.composableBuilder(
      column: $state.table.zipcode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$GeosTableFilterComposer get geoId {
    final $$GeosTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.geoId,
        referencedTable: $state.db.geos,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$GeosTableFilterComposer(
            ComposerState(
                $state.db, $state.db.geos, joinBuilder, parentComposers)));
    return composer;
  }

  ComposableFilter usersRefs(
      ComposableFilter Function($$UsersTableFilterComposer f) f) {
    final $$UsersTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.users,
        getReferencedColumn: (t) => t.addressId,
        builder: (joinBuilder, parentComposers) => $$UsersTableFilterComposer(
            ComposerState(
                $state.db, $state.db.users, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$AddressesTableOrderingComposer
    extends OrderingComposer<_$LocalStorage, $AddressesTable> {
  $$AddressesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get street => $state.composableBuilder(
      column: $state.table.street,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get suite => $state.composableBuilder(
      column: $state.table.suite,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get city => $state.composableBuilder(
      column: $state.table.city,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get zipcode => $state.composableBuilder(
      column: $state.table.zipcode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$GeosTableOrderingComposer get geoId {
    final $$GeosTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.geoId,
        referencedTable: $state.db.geos,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$GeosTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.geos, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$AddressesTableTableManager extends RootTableManager<
    _$LocalStorage,
    $AddressesTable,
    AddressInsertData,
    $$AddressesTableFilterComposer,
    $$AddressesTableOrderingComposer,
    $$AddressesTableCreateCompanionBuilder,
    $$AddressesTableUpdateCompanionBuilder,
    (AddressInsertData, $$AddressesTableReferences),
    AddressInsertData,
    PrefetchHooks Function({bool geoId, bool usersRefs})> {
  $$AddressesTableTableManager(_$LocalStorage db, $AddressesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$AddressesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$AddressesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> street = const Value.absent(),
            Value<String> suite = const Value.absent(),
            Value<String> city = const Value.absent(),
            Value<String> zipcode = const Value.absent(),
            Value<int> geoId = const Value.absent(),
          }) =>
              AddressesCompanion(
            id: id,
            street: street,
            suite: suite,
            city: city,
            zipcode: zipcode,
            geoId: geoId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String street,
            required String suite,
            required String city,
            required String zipcode,
            required int geoId,
          }) =>
              AddressesCompanion.insert(
            id: id,
            street: street,
            suite: suite,
            city: city,
            zipcode: zipcode,
            geoId: geoId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$AddressesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({geoId = false, usersRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (usersRefs) db.users],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (geoId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.geoId,
                    referencedTable: $$AddressesTableReferences._geoIdTable(db),
                    referencedColumn:
                        $$AddressesTableReferences._geoIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (usersRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$AddressesTableReferences._usersRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$AddressesTableReferences(db, table, p0).usersRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.addressId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$AddressesTableProcessedTableManager = ProcessedTableManager<
    _$LocalStorage,
    $AddressesTable,
    AddressInsertData,
    $$AddressesTableFilterComposer,
    $$AddressesTableOrderingComposer,
    $$AddressesTableCreateCompanionBuilder,
    $$AddressesTableUpdateCompanionBuilder,
    (AddressInsertData, $$AddressesTableReferences),
    AddressInsertData,
    PrefetchHooks Function({bool geoId, bool usersRefs})>;
typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  Value<int> id,
  required String name,
  required String username,
  required String email,
  required int addressId,
  required String phone,
  required String website,
  required int companyId,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> username,
  Value<String> email,
  Value<int> addressId,
  Value<String> phone,
  Value<String> website,
  Value<int> companyId,
});

final class $$UsersTableReferences
    extends BaseReferences<_$LocalStorage, $UsersTable, UserInsertData> {
  $$UsersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AddressesTable _addressIdTable(_$LocalStorage db) => db.addresses
      .createAlias($_aliasNameGenerator(db.users.addressId, db.addresses.id));

  $$AddressesTableProcessedTableManager? get addressId {
    if ($_item.addressId == null) return null;
    final manager = $$AddressesTableTableManager($_db, $_db.addresses)
        .filter((f) => f.id($_item.addressId!));
    final item = $_typedResult.readTableOrNull(_addressIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $CompaniesTable _companyIdTable(_$LocalStorage db) => db.companies
      .createAlias($_aliasNameGenerator(db.users.companyId, db.companies.id));

  $$CompaniesTableProcessedTableManager? get companyId {
    if ($_item.companyId == null) return null;
    final manager = $$CompaniesTableTableManager($_db, $_db.companies)
        .filter((f) => f.id($_item.companyId!));
    final item = $_typedResult.readTableOrNull(_companyIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$UsersTableFilterComposer
    extends FilterComposer<_$LocalStorage, $UsersTable> {
  $$UsersTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get username => $state.composableBuilder(
      column: $state.table.username,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get phone => $state.composableBuilder(
      column: $state.table.phone,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get website => $state.composableBuilder(
      column: $state.table.website,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$AddressesTableFilterComposer get addressId {
    final $$AddressesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.addressId,
        referencedTable: $state.db.addresses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$AddressesTableFilterComposer(ComposerState(
                $state.db, $state.db.addresses, joinBuilder, parentComposers)));
    return composer;
  }

  $$CompaniesTableFilterComposer get companyId {
    final $$CompaniesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.companyId,
        referencedTable: $state.db.companies,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$CompaniesTableFilterComposer(ComposerState(
                $state.db, $state.db.companies, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$UsersTableOrderingComposer
    extends OrderingComposer<_$LocalStorage, $UsersTable> {
  $$UsersTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get username => $state.composableBuilder(
      column: $state.table.username,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get phone => $state.composableBuilder(
      column: $state.table.phone,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get website => $state.composableBuilder(
      column: $state.table.website,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$AddressesTableOrderingComposer get addressId {
    final $$AddressesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.addressId,
        referencedTable: $state.db.addresses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$AddressesTableOrderingComposer(ComposerState(
                $state.db, $state.db.addresses, joinBuilder, parentComposers)));
    return composer;
  }

  $$CompaniesTableOrderingComposer get companyId {
    final $$CompaniesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.companyId,
        referencedTable: $state.db.companies,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$CompaniesTableOrderingComposer(ComposerState(
                $state.db, $state.db.companies, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$UsersTableTableManager extends RootTableManager<
    _$LocalStorage,
    $UsersTable,
    UserInsertData,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (UserInsertData, $$UsersTableReferences),
    UserInsertData,
    PrefetchHooks Function({bool addressId, bool companyId})> {
  $$UsersTableTableManager(_$LocalStorage db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UsersTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UsersTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<int> addressId = const Value.absent(),
            Value<String> phone = const Value.absent(),
            Value<String> website = const Value.absent(),
            Value<int> companyId = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            name: name,
            username: username,
            email: email,
            addressId: addressId,
            phone: phone,
            website: website,
            companyId: companyId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String username,
            required String email,
            required int addressId,
            required String phone,
            required String website,
            required int companyId,
          }) =>
              UsersCompanion.insert(
            id: id,
            name: name,
            username: username,
            email: email,
            addressId: addressId,
            phone: phone,
            website: website,
            companyId: companyId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$UsersTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({addressId = false, companyId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (addressId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.addressId,
                    referencedTable: $$UsersTableReferences._addressIdTable(db),
                    referencedColumn:
                        $$UsersTableReferences._addressIdTable(db).id,
                  ) as T;
                }
                if (companyId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.companyId,
                    referencedTable: $$UsersTableReferences._companyIdTable(db),
                    referencedColumn:
                        $$UsersTableReferences._companyIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$UsersTableProcessedTableManager = ProcessedTableManager<
    _$LocalStorage,
    $UsersTable,
    UserInsertData,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (UserInsertData, $$UsersTableReferences),
    UserInsertData,
    PrefetchHooks Function({bool addressId, bool companyId})>;

class $LocalStorageManager {
  final _$LocalStorage _db;
  $LocalStorageManager(this._db);
  $$UserSessionTableTableTableManager get userSessionTable =>
      $$UserSessionTableTableTableManager(_db, _db.userSessionTable);
  $$GeosTableTableManager get geos => $$GeosTableTableManager(_db, _db.geos);
  $$CompaniesTableTableManager get companies =>
      $$CompaniesTableTableManager(_db, _db.companies);
  $$AddressesTableTableManager get addresses =>
      $$AddressesTableTableManager(_db, _db.addresses);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
}
