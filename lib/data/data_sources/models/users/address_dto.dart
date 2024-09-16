import 'package:json_annotation/json_annotation.dart';

import 'geo_dto.dart';

part 'address_dto.g.dart';

@JsonSerializable()
class AddressDto {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoDto geo;

  AddressDto({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);
}
