import 'package:weather/data/weather_data_source.dart';
import 'package:weather/model/weather_model.dart';

class WeatherRepository {
  WeatherRepository(this.weatherDataSource);
  final WeatherDataSource weatherDataSource;
  Future<WeatherModel?> getWeatherModel({required String city}) async {
    final json = await weatherDataSource.getWeatherData(city: city);
    if (json == null) {
      return null;
    }
    return WeatherModel.fromJson(json);
  }
}
