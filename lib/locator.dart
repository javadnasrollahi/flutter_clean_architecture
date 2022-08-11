

import 'package:flutter_clean_architecture/features/feature_bookmark/domain/usecases/get_current_weather_usecase.dart';
import 'package:flutter_clean_architecture/features/feature_bookmark/presentation/bloc/home_bloc.dart';
import 'package:flutter_clean_architecture/features/feature_weather/data/datasources/remote/api_provider.dart';
import 'package:flutter_clean_architecture/features/feature_weather/data/repositories/weather_repository_impl.dart';
import 'package:flutter_clean_architecture/features/feature_weather/domain/repositories/weather_repository.dart';
import 'package:get_it/get_it.dart';

GetIt locater = GetIt.instance;

setup(){
  locater.registerSingleton<ApiProvider>(ApiProvider());


  /// repositores
  locater.registerSingleton<WeatherRepository>(WeatherRepositoryImpl(locater()));

  /// useCases
  locater.registerSingleton<GetCurrentWeatherUsecase>(GetCurrentWeatherUsecase(locater()));


  locater.registerSingleton<HomeBloc>(HomeBloc(locater()));
}