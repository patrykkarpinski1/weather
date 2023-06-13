import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel({
    required Location location,
    required Current current,
    required Forecast forecast,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
class Location with _$Location {
  factory Location({
    required String name,
    required String country,
    required String localtime,
  }) = _Location;
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Current with _$Current {
  factory Current({
    required double temp_c,
    required double wind_kph,
    required double feelslike_c,
    required double gust_kph,
    required int cloud,
    required double pressure_mb,
    required double precip_mm,
    required double humidity,
    required String wind_dir,
    required Condition condition,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

@freezed
class Condition with _$Condition {
  factory Condition({
    required String text,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}

@freezed
class Forecast with _$Forecast {
  factory Forecast({
    required List<Forecastday> forecastday,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}

@freezed
class Forecastday with _$Forecastday {
  factory Forecastday({
    required String date,
    required Day day,
    required Astro astro,
    required List<Hour> hour,
  }) = _Forecastday;

  factory Forecastday.fromJson(Map<String, dynamic> json) =>
      _$ForecastdayFromJson(json);
}

@freezed
class Day with _$Day {
  factory Day({
    required double maxtemp_c,
    required double mintemp_c,
    required double maxwind_kph,
    required double totalprecip_mm,
    required double totalsnow_cm,
    required double avghumidity,
    required double daily_chance_of_rain,
    required double daily_chance_of_snow,
    required double avgvis_km,
    required Condition condition,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}

@freezed
class Astro with _$Astro {
  factory Astro({
    required String sunrise,
    required String sunset,
    required String moonrise,
    required String moonset,
  }) = _Astro;

  factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);
}

@freezed
class Hour with _$Hour {
  factory Hour({
    required double temp_c,
    required String time,
    required Condition condition,
  }) = _Hour;

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
}
