import 'package:dio/dio.dart';

import '../../../../../core/util/constans.dart';

class ApiProvider {
  final Dio _dio = Dio();

  var apiKey = Constans.apiKey;

  ///
  Future<dynamic> callCurrentWeather(cityName) async {
    var response = await _dio.get(
      "${Constans.baseURL}/data/2.5/weather",
      queryParameters: {
        'q': cityName,
        'appid': apiKey,
        'units': 'metric',
      },
    );
    return response;
  }
}
