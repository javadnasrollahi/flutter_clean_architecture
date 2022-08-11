import 'package:flutter_clean_architecture/core/error/data_state.dart';
import 'package:flutter_clean_architecture/core/usecases/use_case.dart';
import 'package:flutter_clean_architecture/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:flutter_clean_architecture/features/feature_weather/domain/repositories/weather_repository.dart';

class GetCurrentWeatherUsecase extends UseCase<DataState<CurrentCityEntity>,String>{
  final WeatherRepository weatherRepository ;

  GetCurrentWeatherUsecase(this.weatherRepository);

  @override
  Future<DataState<CurrentCityEntity>> call(String param) {
    return weatherRepository.fetchCurrentWeatherData(param);
  }
}