import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:weather/features/home/pages/hour_weather_page.dart';
import 'package:weather/model/weather_model.dart';
import 'package:intl/intl.dart';

class EveryHourWeatherPage extends StatelessWidget {
  const EveryHourWeatherPage({Key? key, required this.model}) : super(key: key);
  final WeatherModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 30, 90),
        title: Row(
          children: [
            Text(model.location.name),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 3, 30, 90)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView(
            children: model.forecast.forecastday.map((day) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(DateFormat('yyyy-MM-dd').format(day.date).toString(),
                      style:
                          const TextStyle(fontSize: 24.0, color: Colors.white)),
                  ...day.hour.map((hour) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => HourWeatherPage(hour: hour)));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 52, 90, 126),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          DateFormat('HH:mm')
                                              .format(hour.time)
                                              .toString(),
                                          style: const TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              hour.tempC.toString(),
                                              style: const TextStyle(
                                                  fontSize: 36,
                                                  color: Colors.white),
                                            ),
                                            const Text(
                                              '°',
                                              style: TextStyle(
                                                  fontSize: 36,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(
                                          MdiIcons.cloud,
                                          color: Colors.white,
                                        ),
                                        Row(
                                          children: [
                                            Text(hour.cloud.toString()),
                                            const Text('%'),
                                          ],
                                        ),
                                        Icon(
                                          MdiIcons.waterOutline,
                                          color: Colors.white,
                                        ),
                                        Row(
                                          children: [
                                            Text(hour.chanceOfRain.toString()),
                                            const Text('%'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
