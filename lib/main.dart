import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/data/weather_data_source.dart';
import 'package:weather/features/home/cubit/home_cubit.dart';
import 'package:weather/features/home/home_page.dart';
import 'package:weather/repositories/weather_repostiories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.weatherRepository}) : super(key: key);

  final WeatherRepository? weatherRepository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(WeatherRepository(WeatherDataSource())),
      child: MaterialApp(
        title: 'Weather',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
