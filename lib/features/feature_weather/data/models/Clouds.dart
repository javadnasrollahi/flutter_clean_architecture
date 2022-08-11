class Clouds {
    int? all;

    Clouds({this.all});

    factory Clouds.fromJson(Map<String, dynamic> json) {
        return Clouds(
            all: json['all'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['all'] = this.all;
        return data;
    }
}