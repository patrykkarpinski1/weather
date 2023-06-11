import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/app/core/config.dart';
import 'package:weather/app/injection_container.dart';
import 'package:weather/features/home/cubit/home_cubit.dart';
import 'package:weather/features/home/home_page.dart';
import 'package:weather/model/weather_model.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.model}) : super(key: key);

  final WeatherModel? model;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => getIt(),
      child: MaterialApp(
        title: 'Weather',
        debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
