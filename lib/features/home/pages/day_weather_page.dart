import 'package:flutter/material.dart';
import 'package:weather/model/weather_model.dart';

class DayWeatherPage extends StatelessWidget {
  const DayWeatherPage({super.key, required this.model});
  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.forecast.forecastday[0].date),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('images/sun.png'),
                  ),
                  Text(
                    model.forecast.forecastday[0].day.maxtemp_c.toString(),
                    style: const TextStyle(
                      fontSize: 62,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        '°',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Max.',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(model.forecast.forecastday[0].day.condition.text),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  generateRow('Min. Temp C',
                      model.forecast.forecastday[0].day.mintemp_c.toString()),
                  generateRow('Max. Wind Kph',
                      model.forecast.forecastday[0].day.maxwind_kph.toString()),
                  generateRow(
                      'Total Precip mm',
                      model.forecast.forecastday[0].day.totalprecip_mm
                          .toString()),
                  generateRow(
                      'Total Snow cm',
                      model.forecast.forecastday[0].day.totalsnow_cm
                          .toString()),
                  generateRow('Avg Humidity %',
                      model.forecast.forecastday[0].day.avghumidity.toString()),
                  generateRow(
                      'Daily Chance of Rain %',
                      model.forecast.forecastday[0].day.daily_chance_of_rain
                          .toString()),
                  generateRow(
                      'Daily Chance of Snow %',
                      model.forecast.forecastday[0].day.daily_chance_of_snow
                          .toString()),
                  generateRow('Avg Vis km',
                      model.forecast.forecastday[0].day.avgvis_km.toString()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Image(
                    image: AssetImage('images/sunsmall.png'),
                  ),
                  Image(
                    image: AssetImage('images/moon.png'),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  spacing: 10,
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: const [
                    Text('Sunrise'),
                    Text('Sunset'),
                  ],
                ),
                Wrap(
                  spacing: 10,
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    Text(
                      model.forecast.forecastday[0].astro.sunrise,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      model.forecast.forecastday[0].astro.sunset,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 10,
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: const [
                    Text('Moonrise'),
                    Text('Moonset'),
                  ],
                ),
                Wrap(
                  spacing: 10,
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    Text(
                      model.forecast.forecastday[0].astro.moonrise,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      model.forecast.forecastday[0].astro.moonset,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget generateRow(String title, String value) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(title, textAlign: TextAlign.left),
            ),
            Expanded(
              child: Text(value,
                  textAlign: TextAlign.right,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      const Divider(
        color: Colors.black,
      ),
    ],
  );
}
