import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel({
    required double temperature,
    required String city,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        temperature: (json['current'] as Map<String, dynamic>)['temp_c'],
        city: (json['location'] as Map<String, dynamic>)['name'],
      );
}
