import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_clean_architecture/core/error/data_state.dart';
import 'package:flutter_clean_architecture/features/feature_bookmark/presentation/bloc/cw_status.dart';
import 'package:meta/meta.dart';
import '../../domain/usecases/get_current_weather_usecase.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final GetCurrentWeatherUsecase getCurrentWeatherUsecase;


  HomeBloc(this.getCurrentWeatherUsecase) : super(HomeState(cwStatus:CwLoading())) {
    on<LoadCwEvent>((event, emit) async {
      emit(state.copyWith(newCwStatus:CwLoading()));

      DataState dataState = await getCurrentWeatherUsecase(event.cityName);
      if(dataState is DataSuccess){
        emit(state.copyWith(newCwStatus: CwComplete(dataState.data)));
      }

      if(dataState is DataFailed){
        emit(state.copyWith(newCwStatus: CwError(dataState.error!)));
      }
    });
  }
}
