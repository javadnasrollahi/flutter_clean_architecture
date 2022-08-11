import 'package:flutter_clean_architecture/features/feature_weather/domain/entities/current_city_entity.dart';

import 'Clouds.dart';
import 'Coord.dart';
import 'Main.dart';
import 'Sys.dart';
import 'Weather.dart';
import 'Wind.dart';

class CurrentCityModel extends CurrentCityEntity{
  const CurrentCityModel({
    String? base,
    Clouds? clouds,
    int? cod,
    Coord? coord,
    int? dt,
    int? id,
    Main? main,
    String? name,
    Sys? sys,
    int? timezone,
    int? visibility,
    List<Weather>? weather,
    Wind? wind,
  }): super(
    base: base,
    clouds: clouds,
    cod: cod,
    coord: coord,
    dt: dt,
    id: id,
    main: main,
    name: name,
    sys: sys,
    timezone: timezone,
    visibility: visibility,
    weather: weather,
    wind: wind,
  );

  factory CurrentCityModel.fromJson(Map<String, dynamic> json) {
    return CurrentCityModel(
      base: json['base'],
      clouds: json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null,
      cod: json['cod'],
      coord: json['coord'] != null ? Coord.fromJson(json['coord']) : null,
      dt: json['dt'],
      id: json['id'],
      main: json['main'] != null ? Main.fromJson(json['main']) : null,
      name: json['name'],
      sys: json['sys'] != null ? Sys.fromJson(json['sys']) : null,
      timezone: json['timezone'],
      visibility: json['visibility'],
      weather: json['weather'] != null
          ? (json['weather'] as List).map((i) => Weather.fromJson(i)).toList()
          : null,
      wind: json['wind'] != null ? Wind.fromJson(json['wind']) : null,
    );
  }
}
