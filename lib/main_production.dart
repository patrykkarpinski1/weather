import 'package:flutter/material.dart';
import 'package:weather/app/app.dart';
import 'package:weather/app/core/config.dart';
import 'package:weather/app/injection_container.dart';

void main() {
  Config.appFlavor = Flavor.production;
  configureDependencies();
  runApp(const MyApp());
}
