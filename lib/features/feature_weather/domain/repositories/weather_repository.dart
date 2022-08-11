import 'package:flutter_clean_architecture/features/feature_weather/domain/entities/current_city_entity.dart';

import '../../../../core/error/data_state.dart';

abstract class WeatherRepository{
  Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(String cityName);
}