import 'package:json_annotation/json_annotation.dart';

part 'company_dto.g.dart';

@JsonSerializable()
class CompanyDto {
  final String name;
  final String catchPhrase;
  final String bs;

  CompanyDto({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory CompanyDto.fromJson(Map<String, dynamic> json) =>
      _$CompanyDtoFromJson(json);
}
