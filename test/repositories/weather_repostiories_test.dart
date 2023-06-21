import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/data/weather_data_source.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/repositories/weather_repostiories.dart';

class MockWeatherDataSource extends Mock
    implements WeatherRemoteRetrofitDataSource {}

void main() {
  late WeatherRepository sut;
  late MockWeatherDataSource dataSource;
  setUp(() {
    dataSource = MockWeatherDataSource();
    sut = WeatherRepository(dataSource);
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
    final mockWeatherModel = WeatherModel(
        location: mockLocation, current: mockCurrent, forecast: mockForecast);
    test('should call remoteDataSource.getWeatherData() method', () async {
      // 1
      when(() => dataSource.getWeatherData(city: any(named: 'city')))
          .thenAnswer((_) async => mockWeatherModel);
      // 2
      await sut.getWeatherModel(city: 'city');
      // 3
      verify(() => dataSource.getWeatherData(city: 'city')).called(1);
    });
  });
}
