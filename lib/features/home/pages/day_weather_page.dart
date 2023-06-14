import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/features/widgets/generete_row_widget.dart';
import 'package:weather/model/weather_model.dart';

class DayWeatherPage extends StatelessWidget {
  const DayWeatherPage({super.key, required this.model});
  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          DateFormat('yyyy-MM-dd')
              .format(model.forecast.forecastday[0].date)
              .toString(),
        ),
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
                    model.forecast.forecastday[0].day.maxtempC.toString(),
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
                      model.forecast.forecastday[0].day.mintempC.toString()),
                  generateRow('Max. Wind Kph',
                      model.forecast.forecastday[0].day.maxwindKph.toString()),
                  generateRow(
                      'Total Precip mm',
                      model.forecast.forecastday[0].day.totalprecipMm
                          .toString()),
                  generateRow('Total Snow cm',
                      model.forecast.forecastday[0].day.totalsnowCm.toString()),
                  generateRow('Avg Humidity %',
                      model.forecast.forecastday[0].day.avghumidity.toString()),
                  generateRow(
                      'Daily Chance of Rain %',
                      model.forecast.forecastday[0].day.dailyChanceOfRain
                          .toString()),
                  generateRow(
                      'Daily Chance of Snow %',
                      model.forecast.forecastday[0].day.dailyChanceOfSnow
                          .toString()),
                  generateRow('Avg Vis km',
                      model.forecast.forecastday[0].day.avgvisKm.toString()),
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
