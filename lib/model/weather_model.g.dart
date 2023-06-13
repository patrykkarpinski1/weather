// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
      forecast: Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      name: json['name'] as String,
      country: json['country'] as String,
      localtime: json['localtime'] as String,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'localtime': instance.localtime,
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

_$_Forecast _$$_ForecastFromJson(Map<String, dynamic> json) => _$_Forecast(
      forecastday: (json['forecastday'] as List<dynamic>)
          .map((e) => Forecastday.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastToJson(_$_Forecast instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastday,
    };

_$_Forecastday _$$_ForecastdayFromJson(Map<String, dynamic> json) =>
    _$_Forecastday(
      date: json['date'] as String,
      day: Day.fromJson(json['day'] as Map<String, dynamic>),
      astro: Astro.fromJson(json['astro'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>)
          .map((e) => Hour.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastdayToJson(_$_Forecastday instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'astro': instance.astro,
      'hour': instance.hour,
    };

_$_Day _$$_DayFromJson(Map<String, dynamic> json) => _$_Day(
      maxtemp_c: (json['maxtemp_c'] as num).toDouble(),
      mintemp_c: (json['mintemp_c'] as num).toDouble(),
      maxwind_kph: (json['maxwind_kph'] as num).toDouble(),
      totalprecip_mm: (json['totalprecip_mm'] as num).toDouble(),
      totalsnow_cm: (json['totalsnow_cm'] as num).toDouble(),
      avghumidity: (json['avghumidity'] as num).toDouble(),
      daily_chance_of_rain: (json['daily_chance_of_rain'] as num).toDouble(),
      daily_chance_of_snow: (json['daily_chance_of_snow'] as num).toDouble(),
      avgvis_km: (json['avgvis_km'] as num).toDouble(),
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DayToJson(_$_Day instance) => <String, dynamic>{
      'maxtemp_c': instance.maxtemp_c,
      'mintemp_c': instance.mintemp_c,
      'maxwind_kph': instance.maxwind_kph,
      'totalprecip_mm': instance.totalprecip_mm,
      'totalsnow_cm': instance.totalsnow_cm,
      'avghumidity': instance.avghumidity,
      'daily_chance_of_rain': instance.daily_chance_of_rain,
      'daily_chance_of_snow': instance.daily_chance_of_snow,
      'avgvis_km': instance.avgvis_km,
      'condition': instance.condition,
    };

_$_Astro _$$_AstroFromJson(Map<String, dynamic> json) => _$_Astro(
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
      moonrise: json['moonrise'] as String,
      moonset: json['moonset'] as String,
    );

Map<String, dynamic> _$$_AstroToJson(_$_Astro instance) => <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
    };

_$_Hour _$$_HourFromJson(Map<String, dynamic> json) => _$_Hour(
      temp_c: (json['temp_c'] as num).toDouble(),
      time: json['time'] as String,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HourToJson(_$_Hour instance) => <String, dynamic>{
      'temp_c': instance.temp_c,
      'time': instance.time,
      'condition': instance.condition,
    };
