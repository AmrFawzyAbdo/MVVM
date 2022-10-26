class Nationality {
  List<Country>? country;
  String? name;

  Nationality({this.country, this.name});

  Nationality.fromJson(Map<String, dynamic> json) {
    if (json['country'] != null) {
      country = <Country>[];
      json['country'].forEach((v) {
        country!.add(new Country.fromJson(v));
      });
    }
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.country != null) {
      data['country'] = this.country!.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    return data;
  }
}

class Country {
  String? countryId;
  double? probability;

  Country({this.countryId, this.probability});

  Country.fromJson(Map<String, dynamic> json) {
    countryId = json['country_id'];
    probability = json['probability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country_id'] = this.countryId;
    data['probability'] = this.probability;
    return data;
  }
}