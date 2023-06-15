import 'package:flutter/material.dart';
import 'package:weather/features/home/pages/day_weather_page.dart';
import 'package:weather/features/home/pages/every_hour_weather_page.dart';
import 'package:weather/features/home/pages/next_days_weather_page_view.dart';
import 'package:weather/model/weather_model.dart';

class NavigationWeatherWidget extends StatelessWidget {
  const NavigationWeatherWidget({super.key, required this.model});
  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 24, 85, 177),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(
                      builder: (_) => DayWeatherPage(
                            model: model,
                            index: 0,
                          )));
                },
                child: Column(
                  children: const [
                    Text('Day weather',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 5,
                    ),
                    Image(
                      image: AssetImage(
                        ('images/day.png'),
                      ),
                    ),
                  ],
                ),
              ),
              const RotatedBox(
                quarterTurns: 1,
                child: SizedBox(
                  width: 45,
                  child: Divider(
                    thickness: 1,
                    color: Color.fromARGB(224, 176, 175, 175),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(
                      builder: (_) => EveryHourWeatherPage(
                            model: model,
                          )));
                },
                child: Column(
                  children: const [
                    Text('Every hour',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 5,
                    ),
                    Image(
                      image: AssetImage(
                        ('images/clock.png'),
                      ),
                    ),
                  ],
                ),
              ),
              const RotatedBox(
                quarterTurns: 1,
                child: SizedBox(
                  width: 45,
                  child: Divider(
                    thickness: 1,
                    color: Color.fromARGB(224, 176, 175, 175),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(
                      builder: (_) => NextDaysWeatherPageView(
                            model: model,
                          )));
                },
                child: Column(
                  children: const [
                    Text('Next two days',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 5,
                    ),
                    Image(
                      image: AssetImage(
                        ('images/calendar.png'),
                      ),
                    ),
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
