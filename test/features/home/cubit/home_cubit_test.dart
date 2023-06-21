import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/app/core/enums.dart';
import 'package:weather/features/home/cubit/home_cubit.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/repositories/weather_repostiories.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

void main() {
  late HomeCubit sut;
  late MockWeatherRepository weatherRepository;

  setUp(() {
    weatherRepository = MockWeatherRepository();
    sut = HomeCubit(weatherRepository);
  });
  group('getWeatherModel', () {
    final mockLocation =
        Location(name: 'name', country: 'country', localtime: 'localtime');
    final mockCondition = Condition(text: 'condition');
    final mockCurrent = Current(
        tempC: 30.0,
        windKph: 30.0,
        feelslikeC: 30.0,
        gustKph: 30.0,
        cloud: 30,
        pressureMb: 30.0,
        precipMm: 30.0,
        humidity: 30.0,
        windDir: 'windDir',
        condition: mockCondition);
    final mockForecast = Forecast(forecastday: []);
    final mockModel = WeatherModel(
        location: mockLocation, current: mockCurrent, forecast: mockForecast);
    group('success', () {
      setUp(() {
        when(() => weatherRepository.getWeatherModel(city: 'city'))
            .thenAnswer((_) async => mockModel);
      });
      blocTest<HomeCubit, HomeState>(
        'emits Status.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.getWeatherModel(city: 'city'),
        expect: () => [
          HomeState(
            status: Status.loading,
          ),
          HomeState(
            status: Status.success,
            model: mockModel,
          )
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(() => weatherRepository.getWeatherModel(city: 'city'))
            .thenThrow(Exception('test-exception-error'));
      });
      blocTest<HomeCubit, HomeState>(
        'emits Status.loading then Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.getWeatherModel(city: 'city'),
        expect: () => [
          HomeState(
            status: Status.loading,
          ),
          HomeState(
              status: Status.error,
              errorMessage: 'Exception: test-exception-error'),
        ],
      );
    });
  });
}
