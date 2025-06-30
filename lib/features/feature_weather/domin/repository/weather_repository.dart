import 'package:wetter_app/core/resources/data_state.dart';
import 'package:wetter_app/features/feature_weather/domin/entities/current_city_entity.dart';

abstract class WeatherRepository {
 Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(String cityName);
}
