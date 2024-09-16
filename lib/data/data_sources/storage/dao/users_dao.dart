import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

import '../../models/users/address_dto.dart';
import '../../models/users/company_dto.dart';
import '../../models/users/geo_dto.dart';
import '../../models/users/user_dto.dart';
import '../local_storage.dart';
import '../tables/users/addresses_table.dart';
import '../tables/users/companies_table.dart';
import '../tables/users/geos_table.dart';
import '../tables/users/users_table.dart';
import '../views/indicators_view.dart';

part 'users_dao.g.dart';

@lazySingleton
@DriftAccessor(
  tables: [
    Users,
    Addresses,
    Geos,
    Companies,
  ],
  views: [
    IndicatorsView,
  ],
)
class UsersDao extends DatabaseAccessor<LocalStorage> with _$UsersDaoMixin {
  UsersDao(super.db);

  Future<void> insertUsers(List<UserDto> userList) async {
    await batch((batch) async {
      batch.insertAllOnConflictUpdate(
        users,
        await Future.wait(userList.map(
          (user) async {
            final geoId =
                await into(geos).insert(user.address.geo.toInsertGeo());
            final addressId = await into(addresses)
                .insert(user.address.toInsertAddress(geoId));
            final companyId =
                await into(companies).insert(user.company.toInsertCompany());

            return UsersCompanion.insert(
              name: user.name,
              username: user.username,
              email: user.email,
              addressId: addressId,
              phone: user.phone,
              website: user.website,
              companyId: companyId,
            );
          },
        )),
      );
    });
  }

  Future<List<UserDto>> getAllUsers() async {
    final views = await indicatorsView.select().get();
    return views.map(_UserExt.fromIndicatorsViewData).toList();
  }

  Future<UserDto> getUserById(int userId) async {
    final userData = await (indicatorsView.select()
          ..where(
            (tbl) => tbl.id.equals(userId),
          ))
        .getSingle();

    return _UserExt.fromIndicatorsViewData(userData);
  }
}

extension on GeoDto {
  GeosCompanion toInsertGeo() => GeosCompanion.insert(
        lat: lat,
        lng: lng,
      );
}

extension on AddressDto {
  AddressesCompanion toInsertAddress(int geoId) => AddressesCompanion.insert(
        street: street,
        suite: suite,
        city: city,
        zipcode: zipcode,
        geoId: geoId,
      );
}

extension on CompanyDto {
  CompaniesCompanion toInsertCompany() =>
      CompaniesCompanion.insert(name: name, catchPhrase: catchPhrase, bs: bs);
}

extension _UserExt on UserDto {
  static UserDto fromIndicatorsViewData(IndicatorsViewData view) => UserDto(
        id: view.id,
        name: view.name,
        username: view.username,
        email: view.email,
        address: AddressDto(
            street: view.street,
            suite: view.suite,
            city: view.city,
            zipcode: view.zipcode,
            geo: GeoDto(lat: view.lat, lng: view.lng)),
        phone: view.phone,
        website: view.website,
        company: CompanyDto(
          name: view.name1,
          catchPhrase: view.catchPhrase,
          bs: view.bs,
        ),
      );
}
