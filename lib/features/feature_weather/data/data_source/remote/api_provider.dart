import 'package:dio/dio.dart';
import 'package:wetter_app/core/utils/constants.dart';

class ApiProvider {
  
 final Dio _dio = Dio();
 var apiKey=Constants.apiKey;
 var baseUrl=Constants.baseUrl;

 callCurrentWeather(cityName){
  var response = _dio.get("$baseUrl/data/2.5/weather",
      queryParameters: {
        "q": cityName,
        "appid": apiKey,
        "units": "metric"
      });
  return response;
  
 }

}
