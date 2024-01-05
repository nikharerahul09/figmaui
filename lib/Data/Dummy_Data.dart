import '../Utils/Imagepath_assets.dart';

class Data {
  static final List<String> Category = [
    "Location",
    "Hotel",
    "Food",
    "Adventure",
    "Tour",
  ];

  static List<Map<String, dynamic>> place = [
    {
      "place name": "Alley palace",
      "image": ImagePath.placeImage1,
      "Rating": 4.1,
      "Reviews": 355,
      "About":
          "A port is a landscape built for human use, but a beach, in the most basic, geological sense, is nothing more than sediments accumulated on a coast—available to be moved and sorted by the uprush and backwash of the waves.",
      "Facilities": [
        {"Facility": "1 Heater", "Image": ImagePath.facility1},
        {"Facility": "Dinner", "Image": ImagePath.facility2},
        {"Facility": "Spa", "Image": ImagePath.facility3}
      ],
      "Price": 200
    },
    {
      "place name": "Coeurdes Alpes",
      "image": ImagePath.placeImage2,
      "Rating": 4.5,
      "Reviews": 335,
      "About":
        "At Taj, guests from around the world find comfort in the stately, tastefully designed rooms, offering unhindered views of the destination, while providing convenient in-room facilities. Another discerning aspect of Taj is their ability to provide a culinary experience unlike any other.",
      "Facilities": [
        {"Facility": "1 Heater", "Image": ImagePath.facility1},
        {"Facility": "Dinner", "Image": ImagePath.facility2},
        {"Facility": "1 Tub", "Image": ImagePath.facility3},
        {"Facility": "Pool", "Image": ImagePath.facility4}
      ],
      "Price": 199
    },
    {
      "place name": "Alley palace",
      "image": ImagePath.placeImage1,
      "Rating": 3.2,
      "Reviews": 355,
      "About":
          "A port is a landscape built for human use, but a beach, in the most basic, geological sense, is nothing more than sediments accumulated on a coast—available to be moved and sorted by the uprush and backwash of the waves.",
      "Facilities": [
        {"Facility": "1 Heater", "Image": ImagePath.facility1},
        {"Facility": "Dinner", "Image": ImagePath.facility4},
        {"Facility": "1 Tub", "Image": ImagePath.facility3}
      ],
      "Price": 200
    }
  ];
}
