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
    required double tempC,
    required double windKph,
    required double feelslikeC,
    required double gustKph,
    required int cloud,
    required double pressureMb,
    required double precipMm,
    required double humidity,
    required String windDir,
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
    required DateTime date,
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
    required double maxtempC,
    required double mintempC,
    required double maxwindKph,
    required double totalprecipMm,
    required double totalsnowCm,
    required double avghumidity,
    required double dailyChanceOfRain,
    required double dailyChanceOfSnow,
    required double avgvisKm,
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
    required double tempC,
    required DateTime time,
    required Condition condition,
    required double windKph,
    required String windDir,
    required double pressureMb,
    required double precipMm,
    required double humidity,
    required double cloud,
    required double chanceOfRain,
    required double chanceOfSnow,
    required double gustKph,
    required double dewpointC,
  }) = _Hour;

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
}
