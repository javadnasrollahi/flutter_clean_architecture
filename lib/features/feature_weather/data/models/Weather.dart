class Weather {
    String? description;
    String? icon;
    int? id;
    String? main;

    Weather({ this.description,  this.icon, this.id,  this.main});

    factory Weather.fromJson(Map<String, dynamic> json) {
        return Weather(
            description: json['description'], 
            icon: json['icon'], 
            id: json['id'], 
            main: json['main'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['description'] = this.description;
        data['icon'] = this.icon;
        data['id'] = this.id;
        data['main'] = this.main;
        return data;
    }
}