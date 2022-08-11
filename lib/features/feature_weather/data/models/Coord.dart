class Coord {
    double? lat;
    double? lon;

    Coord({ this.lat,  this.lon});

    factory Coord.fromJson(Map<String, dynamic> json) {
        return Coord(
            lat: json['lat'], 
            lon: json['lon'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['lat'] = this.lat;
        data['lon'] = this.lon;
        return data;
    }
}