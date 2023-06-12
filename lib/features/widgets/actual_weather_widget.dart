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
                  Text(
                    model.current.wind_dir,
                  ),
                  const Text('  '),
                  Text(
                    model.current.wind_kph.toString(),
                  ),
                  const Text(' kph'),
                ],
              ),
              Row(
                children: [
                  Text(
                    model.current.gust_kph.toString(),
                  ),
                  const Text(' kph'),
                ],
              ),
              Row(
                children: [
                  Text(
                    model.current.cloud.toString(),
                  ),
                  const Text(' %'),
                ],
              ),
              Row(
                children: [
                  Text(
                    model.current.precip_mm.toString(),
                  ),
                  const Text(' mm'),
                ],
              ),
              Row(
                children: [
                  Text(
                    model.current.humidity.toString(),
                  ),
                  const Text(' %'),
                ],
              ),
              Row(
                children: [
                  Text(
                    model.current.pressure_mb.toString(),
                  ),
                  const Text(' mb'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
