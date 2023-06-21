import 'package:flutter/material.dart';
import 'package:weather/model/weather_model.dart';

class ActualWeatherWidget extends StatelessWidget {
  const ActualWeatherWidget({super.key, required this.model});
  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            spacing: 10,
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: const [
              Text('Wind'),
              Text('Gust of wind'),
              Text('Cloudiness'),
              Text('Precipitation'),
              Text('Humidity '),
              Text('Pressure '),
            ],
          ),
          Wrap(
            spacing: 10,
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              Row(
                children: [
                  Text(model.current.windDir,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const Text('  '),
                  Text(model.current.windKph.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const Text(' kph',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  Text(model.current.gustKph.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const Text(' kph',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  Text(model.current.cloud.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const Text(' %',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  Text(model.current.precipMm.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const Text(' mm',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  Text(model.current.humidity.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const Text(' %',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  Text(model.current.pressureMb.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const Text(' mb',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
