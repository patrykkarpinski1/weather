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
      tempC: (json['temp_c'] as num).toDouble(),
      windKph: (json['wind_kph'] as num).toDouble(),
      feelslikeC: (json['feelslike_c'] as num).toDouble(),
      gustKph: (json['gust_kph'] as num).toDouble(),
      cloud: json['cloud'] as int,
      pressureMb: (json['pressure_mb'] as num).toDouble(),
      precipMm: (json['precip_mm'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      windDir: json['wind_dir'] as String,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CurrentToJson(_$_Current instance) =>
    <String, dynamic>{
      'temp_c': instance.tempC,
      'wind_kph': instance.windKph,
      'feelslike_c': instance.feelslikeC,
      'gust_kph': instance.gustKph,
      'cloud': instance.cloud,
      'pressure_mb': instance.pressureMb,
      'precip_mm': instance.precipMm,
      'humidity': instance.humidity,
      'wind_dir': instance.windDir,
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
      date: DateTime.parse(json['date'] as String),
      day: Day.fromJson(json['day'] as Map<String, dynamic>),
      astro: Astro.fromJson(json['astro'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>)
          .map((e) => Hour.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastdayToJson(_$_Forecastday instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'day': instance.day,
      'astro': instance.astro,
      'hour': instance.hour,
    };

_$_Day _$$_DayFromJson(Map<String, dynamic> json) => _$_Day(
      maxtempC: (json['maxtemp_c'] as num).toDouble(),
      mintempC: (json['mintemp_c'] as num).toDouble(),
      maxwindKph: (json['maxwind_kph'] as num).toDouble(),
      totalprecipMm: (json['totalprecip_mm'] as num).toDouble(),
      totalsnowCm: (json['totalsnow_cm'] as num).toDouble(),
      avghumidity: (json['avghumidity'] as num).toDouble(),
      dailyChanceOfRain: (json['daily_chance_of_rain'] as num).toDouble(),
      dailyChanceOfSnow: (json['daily_chance_of_snow'] as num).toDouble(),
      avgvisKm: (json['avgvis_km'] as num).toDouble(),
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DayToJson(_$_Day instance) => <String, dynamic>{
      'maxtemp_c': instance.maxtempC,
      'mintemp_c': instance.mintempC,
      'maxwind_kph': instance.maxwindKph,
      'totalprecip_mm': instance.totalprecipMm,
      'totalsnow_cm': instance.totalsnowCm,
      'avghumidity': instance.avghumidity,
      'daily_chance_of_rain': instance.dailyChanceOfRain,
      'daily_chance_of_snow': instance.dailyChanceOfSnow,
      'avgvis_km': instance.avgvisKm,
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
      tempC: (json['temp_c'] as num).toDouble(),
      time: DateTime.parse(json['time'] as String),
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      windKph: (json['wind_kph'] as num).toDouble(),
      windDir: json['wind_dir'] as String,
      pressureMb: (json['pressure_mb'] as num).toDouble(),
      precipMm: (json['precip_mm'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      cloud: (json['cloud'] as num).toDouble(),
      chanceOfRain: (json['chance_of_rain'] as num).toDouble(),
      chanceOfSnow: (json['chance_of_snow'] as num).toDouble(),
      gustKph: (json['gust_kph'] as num).toDouble(),
      dewpointC: (json['dewpoint_c'] as num).toDouble(),
    );

Map<String, dynamic> _$$_HourToJson(_$_Hour instance) => <String, dynamic>{
      'temp_c': instance.tempC,
      'time': instance.time.toIso8601String(),
      'condition': instance.condition,
      'wind_kph': instance.windKph,
      'wind_dir': instance.windDir,
      'pressure_mb': instance.pressureMb,
      'precip_mm': instance.precipMm,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'chance_of_rain': instance.chanceOfRain,
      'chance_of_snow': instance.chanceOfSnow,
      'gust_kph': instance.gustKph,
      'dewpoint_c': instance.dewpointC,
    };
