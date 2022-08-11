class Wind {
    int? deg;
    double? speed;

    Wind({ this.deg,  this.speed});

    factory Wind.fromJson(Map<String, dynamic> json) {
        return Wind(
            deg: json['deg'], 
            speed: json['speed'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['deg'] = this.deg;
        data['speed'] = this.speed;
        return data;
    }
}