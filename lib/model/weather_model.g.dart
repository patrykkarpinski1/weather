// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_Current _$$_CurrentFromJson(Map<String, dynamic> json) => _$_Current(
      temp_c: (json['temp_c'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CurrentToJson(_$_Current instance) =>
    <String, dynamic>{
      'temp_c': instance.temp_c,
    };
