import 'package:flutter/material.dart';
import 'package:weather/model/weather_model.dart';

class ThreeDaysWeatherPage extends StatelessWidget {
  const ThreeDaysWeatherPage({super.key, required this.model});
  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
