import 'package:flutter/material.dart';
import 'package:weather/features/home/pages/day_weather_page.dart';
import 'package:weather/model/weather_model.dart';

class NextDaysWeatherPageView extends StatefulWidget {
  const NextDaysWeatherPageView({Key? key, required this.model})
      : super(key: key);
  final WeatherModel model;

  @override
  State<NextDaysWeatherPageView> createState() =>
      _NextDaysWeatherPageViewState();
}

class _NextDaysWeatherPageViewState extends State<NextDaysWeatherPageView> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView(
          controller: _pageController,
          children: <Widget>[
            DayWeatherPage(model: widget.model, index: 1),
            DayWeatherPage(model: widget.model, index: 2),
          ],
        ),
        Positioned(
          bottom: 10.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
              2,
              (int index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 10.0,
                  width: 10.0,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? Colors.blueAccent
                        : Colors.blueGrey,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
