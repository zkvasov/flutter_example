import 'package:json_annotation/json_annotation.dart';

import 'address_dto.dart';
import 'company_dto.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final int id;
  final String name;
  final String username;
  final String email;
  final AddressDto address;
  final String phone;
  final String website;
  final CompanyDto company;

  UserDto({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
