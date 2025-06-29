import 'package:dio/dio.dart';
import 'package:wetter_app/core/utils/constants.dart';

class ApiProvider {

 final Dio _dio = Dio();
 var apiKey=Constants.apiKey;
 var baseUrl=Constants.baseUrl;


  /// Fetches the current weather data for a given city name.

 Future<dynamic> callCurrentWeather(cityName) async {
  var response = await _dio.get("$baseUrl/data/2.5/weather",
      queryParameters: {
        "q": cityName,
        "appid": apiKey,
        "units": "metric"
      });
      print(response.data);
  return response;
  
 }

}
