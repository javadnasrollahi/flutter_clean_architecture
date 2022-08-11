

// {coord: {lon: 51.4215, lat: 35.6944}, weather: [{id: 801, main: Clouds, description: few clouds, icon: 02d}], base: stations, main: {temp: 35.67, feels_like: 33.67, temp_min: 35.4, temp_max: 36.79, pressure: 1010, humidity: 19}, visibility: 10000, wind: {speed: 4.12, deg: 190}, clouds: {all: 20}, dt: 1660046869, sys: {type: 2, id: 47737, country: IR, sunrise: 1660009697, sunset: 1660059092}, timezone: 16200, id: 112931, name: Tehran, cod: 200}
class Sys {
    String? country;
    int? id;
    double? message;
    int? sunrise;
    int? sunset;
    int? type;

    Sys({ this.country,  this.id,  this.message,  this.sunrise,  this.sunset,  this.type});

    factory Sys.fromJson(Map<String, dynamic> json) {
        return Sys(
            country: json['country'], 
            id: json['id'], 
            message: json['message'],
            sunrise: json['sunrise'],
            sunset: json['sunset'], 
            type: json['type'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['country'] = this.country;
        data['id'] = this.id;
        data['message'] = this.message;
        data['sunrise'] = this.sunrise;
        data['sunset'] = this.sunset;
        data['type'] = this.type;
        return data;
    }
}