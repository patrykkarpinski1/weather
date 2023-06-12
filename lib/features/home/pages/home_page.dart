import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:weather/app/core/enums.dart';
import 'package:weather/features/widgets/actual_weather_widget.dart';
import 'package:weather/features/home/pages/city_page.dart';
import 'package:weather/features/home/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/widgets/city_temperature_widget.dart';
import 'package:weather/features/widgets/navigation_weather_widget.dart';
import 'package:weather/model/weather_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    this.model,
  });
  final WeatherModel? model;

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
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromARGB(255, 73, 224, 248),
                    Color.fromARGB(255, 5, 10, 155)
                  ])),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
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
            child: ListView(
              children: [
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
                        if (weatherModel == null) ...[
                          Text(
                            'City',
                            style: GoogleFonts.asap(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                        if (weatherModel != null) ...[
                          Text(
                            weatherModel.location.name,
                            style: GoogleFonts.asap(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
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
                if (weatherModel != null) ...[
                  CityTemperatureWidget(
                    model: weatherModel,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  NavigationWeatherWidget(model: weatherModel),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 60,
                        width: 80,
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '  Actual Weather  ',
                        style:
                            GoogleFonts.asap(fontSize: 24, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 60,
                        width: 80,
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  ActualWeatherWidget(model: weatherModel),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
