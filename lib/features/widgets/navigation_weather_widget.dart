import 'package:flutter/material.dart';
import 'package:weather/model/weather_model.dart';

class NavigationWeatherWidget extends StatelessWidget {
  const NavigationWeatherWidget({super.key, required this.model});
  final WeatherModel? model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(
                ('images/calendar.png'),
              ),
            ),
            Image(
              image: AssetImage(
                ('images/calendar.png'),
              ),
            ),
            Image(
              image: AssetImage(
                ('images/calendar.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
