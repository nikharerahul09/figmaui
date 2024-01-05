class placeModel {
  String? placeName;
  String? image;
  double? rating;
  int? reviews;
  late String about;
  List<Facilities>? facilities;
  int? price;

  placeModel(
      {this.placeName,
        this.image,
        this.rating,
        this.reviews,
        required this.about,
        this.facilities,
        this.price});

  placeModel.fromJson(Map<String, dynamic> json) {
    placeName = json['place name'];
    image = json['image'];
    rating = json['Rating'];
    reviews = json['Reviews'];
    about = json['About'];
    if (json['Facilities'] != null) {
      facilities = <Facilities>[];
      json['Facilities'].forEach((v) {
        facilities!.add(Facilities.fromJson(v));
      });
    }
    price = json['Price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['place name'] = placeName;
    data['image'] = image;
    data['Rating'] = rating;
    data['Reviews'] = reviews;
    data['About'] = about;
    if (facilities != null) {
      data['Facilities'] = facilities!.map((v) => v.toJson()).toList();
    }
    data['Price'] = price;
    return data;
  }
}

class Facilities {
  String? facility;
  String? image;

  Facilities({this.facility, this.image});

  Facilities.fromJson(Map<String, dynamic> json) {
    facility = json['Facility'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Facility'] = facility;
    data['Image'] = image;
    return data;
  }
}
