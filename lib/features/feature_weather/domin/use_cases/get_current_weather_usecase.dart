import 'package:wetter_app/core/usecase/use_case.dart';
import 'package:wetter_app/features/feature_weather/domin/repository/weather_repository.dart';  
import '../../../../core/resources/data_state.dart';
import '../entities/current_city_entity.dart';

class GetCurrentWeatherUsecase extends UseCase <DataState<CurrentCityEntity>,String>{
  final WeatherRepository weatherRepository;
  GetCurrentWeatherUsecase(this.weatherRepository);
  
  @override
  Future<DataState<CurrentCityEntity>> call(String params) {

    return weatherRepository.fetchCurrentWeatherData(params);

  }
  
}
