import 'package:weather/data/weather_data_source.dart';
import 'package:weather/model/weather_model.dart';

class WeatherRepository {
  WeatherRepository(this.weatherDataSource);
  final WeatherRemoteRetrofitDataSource weatherDataSource;
  Future<WeatherModel?> getWeatherModel({required String city}) async {
    return weatherDataSource.getWeatherData(city: city);
  }
}
