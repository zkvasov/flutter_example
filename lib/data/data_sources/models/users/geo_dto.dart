import 'package:json_annotation/json_annotation.dart';

part 'geo_dto.g.dart';

@JsonSerializable()
class GeoDto {
  final String lat;
  final String lng;

  GeoDto({
    required this.lat,
    required this.lng,
  });

  factory GeoDto.fromJson(Map<String, dynamic> json) => _$GeoDtoFromJson(json);
}
