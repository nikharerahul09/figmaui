import 'package:flutter/material.dart';

import '../Data/Model_Class/Place_Model_Class.dart';
import '../Utils/FontFamily.dart';
import '../Utils/const.dart';

class RecommendedWidget extends StatelessWidget {
  final placeModel place;

  const RecommendedWidget({
    super.key,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      height: 140,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                    height: 120,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(place.image.toString()),
                            fit: BoxFit.cover))),
              ),
              Positioned(
                bottom: 0,
                right: 5,
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 3),
                        color: const Color(0xff4D5652),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      place.placeName.toString(),
                      style:
                          FontFamily.regular(fontsize: 9, color: Colors.white),
                    )),
              ),
            ],
          ),
          Text(
            place.placeName.toString(),
            style: FontFamily.bold(font: Const.Montserrat, fontsize: 15),
          )
        ],
      ),
    );
  }
}
