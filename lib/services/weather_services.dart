import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apiKey = "b7208b61350f4bca93e155814241912";
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response =
        await dio.get("$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1");

    WeatherModel weatherModel = response.data;
    return weatherModel;
  }
}
