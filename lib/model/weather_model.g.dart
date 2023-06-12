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
      country: json['country'] as String,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
    };

_$_Current _$$_CurrentFromJson(Map<String, dynamic> json) => _$_Current(
      temp_c: (json['temp_c'] as num).toDouble(),
      wind_kph: (json['wind_kph'] as num).toDouble(),
      feelslike_c: (json['feelslike_c'] as num).toDouble(),
      gust_kph: (json['gust_kph'] as num).toDouble(),
      cloud: json['cloud'] as int,
      pressure_mb: (json['pressure_mb'] as num).toDouble(),
      precip_mm: (json['precip_mm'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      wind_dir: json['wind_dir'] as String,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CurrentToJson(_$_Current instance) =>
    <String, dynamic>{
      'temp_c': instance.temp_c,
      'wind_kph': instance.wind_kph,
      'feelslike_c': instance.feelslike_c,
      'gust_kph': instance.gust_kph,
      'cloud': instance.cloud,
      'pressure_mb': instance.pressure_mb,
      'precip_mm': instance.precip_mm,
      'humidity': instance.humidity,
      'wind_dir': instance.wind_dir,
      'condition': instance.condition,
    };

_$_Condition _$$_ConditionFromJson(Map<String, dynamic> json) => _$_Condition(
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_ConditionToJson(_$_Condition instance) =>
    <String, dynamic>{
      'text': instance.text,
    };
