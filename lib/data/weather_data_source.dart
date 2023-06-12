import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather/model/weather_model.dart';

part 'weather_data_source.g.dart';

@injectable
@RestApi()
abstract class WeatherRemoteRetrofitDataSource {
  @factoryMethod
  factory WeatherRemoteRetrofitDataSource(Dio dio) =
      _WeatherRemoteRetrofitDataSource;

  @GET(
      'forecast.json?key=9c246e4146014bb280f160413231006&days=3&aqi=yes&alerts=no')
  Future<WeatherModel> getWeatherData({
    @Query('q') String? city,
  });
}
