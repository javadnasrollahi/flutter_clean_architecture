import 'package:equatable/equatable.dart';

import '../../data/models/Clouds.dart';
import '../../data/models/Coord.dart';
import '../../data/models/Main.dart';
import '../../data/models/Sys.dart';
import '../../data/models/Weather.dart';
import '../../data/models/Wind.dart';

class CurrentCityEntity extends Equatable {
  final String? base;
  final Clouds? clouds;
  final int? cod;
  final Coord? coord;
  final int? dt;
  final int? id;
  final Main? main;
  final String? name;
  final Sys? sys;
  final int? timezone;
  final int? visibility;
  final List<Weather>? weather;
  final Wind? wind;

  const CurrentCityEntity(
      {this.base,
      this.clouds,
      this.cod,
      this.coord,
      this.dt,
      this.id,
      this.main,
      this.name,
      this.sys,
      this.timezone,
      this.visibility,
      this.weather,
      this.wind});

  @override
  // TODO: implement props
  List<Object?> get props => [
    base,
    coord,
    weather,
    main,
  ];
}
