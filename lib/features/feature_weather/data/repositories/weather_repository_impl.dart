import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/error/data_state.dart';
import 'package:flutter_clean_architecture/features/feature_weather/data/datasources/remote/api_provider.dart';
import 'package:flutter_clean_architecture/features/feature_weather/data/models/current_city_model.dart';
import 'package:flutter_clean_architecture/features/feature_weather/domain/entities/current_city_entity.dart';
import 'package:flutter_clean_architecture/features/feature_weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository{
  ApiProvider apiProvider;

  WeatherRepositoryImpl(this.apiProvider);

  @override
  Future<DataState<CurrentCityEntity>> fetchCurrentWeatherData(String cityName) async {
    try{
      Response response = await apiProvider.callCurrentWeather(cityName);
      if(response.statusCode == 200){
        CurrentCityModel currentCityEntity  = CurrentCityModel.fromJson(response.data);
        return DataSuccess(currentCityEntity);
      }else{
        return const DataFailed("Some went Warong. try again ...");
      }
    }catch(e){
        return const DataFailed("Please Check your connection...");
    }
  }
}