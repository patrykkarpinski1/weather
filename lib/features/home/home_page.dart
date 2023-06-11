import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:weather/app/core/enums.dart';
import 'package:weather/features/home/city_page.dart';
import 'package:weather/features/home/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/repositories/weather_repostiories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, this.model, this.weatherRepository});
  final WeatherModel? model;
  final WeatherRepository? weatherRepository;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state.status == Status.error) {
          final errorMessage = state.errorMessage ?? 'Unkown error';
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        if (state.status == Status.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final weatherModel = state.model;
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(255, 73, 224, 248),
                  Color.fromARGB(255, 5, 10, 155)
                ])),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Center(
                    child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  width: 150,
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'City',
                          style: GoogleFonts.asap(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Icon(
                          MdiIcons.menuDown,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).push(
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 500),
                          pageBuilder: (_, __, ___) => const CityPage(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(0.0, -1.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  ),
                )),
                const SizedBox(
                  height: 80,
                ),
                if (weatherModel != null)
                  CityTemperatureWidget(
                    model: weatherModel,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CityTemperatureWidget extends StatelessWidget {
  const CityTemperatureWidget({
    required this.model,
    Key? key,
  }) : super(key: key);
  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          model.city,
          style: GoogleFonts.asap(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        const SizedBox(
          height: 35,
        ),
        Container(
          width: 250,
          height: 250,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromARGB(255, 138, 223, 236),
                  Color.fromARGB(241, 21, 120, 201)
                ]),
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.temperature.toString(),
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  MdiIcons.temperatureCelsius,
                  size: 32,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
