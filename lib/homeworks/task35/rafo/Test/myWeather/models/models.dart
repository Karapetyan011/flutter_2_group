import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';


@JsonSerializable()
class WeatherDTO {
  Map<String, double>? coord;
  List<Map<String, dynamic>>? weather;
  Map<String, dynamic>? main;
  String? name;

  WeatherDTO({
    this.coord,
    this.weather,
    this.main,
    this.name,

  });

  factory WeatherDTO.fromJson(Map<String,dynamic> json) => _$WeatherDTOFromJson(json);

  Map<String, dynamic> toJson()=> _$WeatherDTOToJson(this);


}

