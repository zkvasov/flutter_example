import 'package:drift/drift.dart';

import '../tables/users/addresses_table.dart';
import '../tables/users/companies_table.dart';
import '../tables/users/geos_table.dart';
import '../tables/users/users_table.dart';

abstract class IndicatorsView extends View {
  Users get users;
  Addresses get addresses;
  Geos get geos;
  Companies get companies;

  @override
  Query<HasResultSet, dynamic> as() => select([
        users.id,
        users.name,
        users.username,
        users.email,
        users.phone,
        users.website,
        addresses.street,
        addresses.suite,
        addresses.city,
        addresses.zipcode,
        geos.lat,
        geos.lng,
        companies.name,
        companies.catchPhrase,
        companies.bs,
      ]).from(users).join([
        innerJoin(
          addresses,
          addresses.id.equalsExp(users.addressId),
        ),
        innerJoin(
          geos,
          geos.id.equalsExp(addresses.geoId),
        ),
        innerJoin(
          companies,
          companies.id.equalsExp(users.companyId),
        ),
      ]);
}
