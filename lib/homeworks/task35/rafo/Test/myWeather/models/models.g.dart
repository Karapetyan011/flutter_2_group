// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDTO _$WeatherDTOFromJson(Map<String, dynamic> json) {
  return WeatherDTO(
    coord: (json['coord'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num).toDouble()),
    ),
    weather: (json['weather'] as List<dynamic>?)
        ?.map((e) => e as Map<String, dynamic>)
        .toList(),
    main: json['main'] as Map<String, dynamic>?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$WeatherDTOToJson(WeatherDTO instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'main': instance.main,
      'name': instance.name,
    };
