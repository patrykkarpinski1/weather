import 'package:flutter/material.dart';
import 'package:weather/app/app.dart';
import 'package:weather/app/injection_container.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}
