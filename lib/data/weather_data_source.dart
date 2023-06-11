import 'package:dio/dio.dart';

class WeatherDataSource {
  Future<Map<String, dynamic>?> getWeatherData({required String city}) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'http://api.weatherapi.com/v1/current.json?key=9c246e4146014bb280f160413231006&q=$city&aqi=no');
      return response.data;
    } on DioException catch (error) {
      throw Exception(
          error.response?.data['error']['message'] ?? 'Unkown error');
    }
  }
}
