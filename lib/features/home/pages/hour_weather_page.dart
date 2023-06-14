import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:weather/features/widgets/generete_row_widget.dart';
import 'package:weather/model/weather_model.dart';

class HourWeatherPage extends StatelessWidget {
  const HourWeatherPage({super.key, required this.hour});
  final Hour hour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              MdiIcons.arrowLeft,
              color: Colors.black,
            )),
        backgroundColor: const Color.fromARGB(255, 31, 51, 94),
        title: Row(
          children: [
            Text(
              DateFormat('HH:mm').format(hour.time).toString(),
              style: const TextStyle(color: Colors.black),
            ),
            const Text(
              ', ',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              DateFormat.EEEE().format(hour.time).toString(),
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 31, 51, 94),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      hour.tempC.toString(),
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
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(hour.condition.text),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Column(
                  children: [
                    generateRow('Wind Kph', hour.windKph.toString()),
                    generateRow('Wind Dir', hour.windDir.toString()),
                    generateRow('Pressure mb', hour.pressureMb.toString()),
                    generateRow('Precip mm', hour.precipMm.toString()),
                    generateRow('Humidity %', hour.humidity.toString()),
                    generateRow('Cloudiness %', hour.cloud.toString()),
                    generateRow(
                        'Daily Chance of Rain %', hour.chanceOfRain.toString()),
                    generateRow(
                        'Daily Chance of Snow %', hour.chanceOfSnow.toString()),
                    generateRow('Gust Kph', hour.gustKph.toString()),
                    generateRow('Dewpoint °C', hour.dewpointC.toString()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
