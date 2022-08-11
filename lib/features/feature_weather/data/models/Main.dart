class Main {
    double? feels_like;
    int? humidity;
    int? pressure;
    double? temp;
    double? temp_max;
    double? temp_min;

    Main({ this.feels_like,  this.humidity,  this.pressure,  this.temp,  this.temp_max,  this.temp_min});

    factory Main.fromJson(Map<String, dynamic> json) {
        return Main(
            feels_like: json['feels_like'], 
            humidity: json['humidity'], 
            pressure: json['pressure'], 
            temp: json['temp'], 
            temp_max: json['temp_max'], 
            temp_min: json['temp_min'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['feels_like'] = this.feels_like;
        data['humidity'] = this.humidity;
        data['pressure'] = this.pressure;
        data['temp'] = this.temp;
        data['temp_max'] = this.temp_max;
        data['temp_min'] = this.temp_min;
        return data;
    }
}