import 'package:flutter/material.dart';

import '../Data/Model_Class/Place_Model_Class.dart';
import '../Utils/FontFamily.dart';

class PlaceCardWidget extends StatelessWidget {
  final placeModel place;

  const PlaceCardWidget({
    super.key,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      height: 310,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: AssetImage(place.image.toString()), fit: BoxFit.fill)),
      child: Stack(
        children: [
          Positioned(
            bottom: 12,
            left: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        color: const Color(0xff4D5652),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      place.placeName.toString(),
                      style:
                      FontFamily.regular(fontsize: 11, color: Colors.white),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                    decoration: BoxDecoration(
                        color: const Color(0xff4D5652),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          place.rating.toString(),
                          style: FontFamily.regular(
                              fontsize: 10, color: Colors.white),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Positioned(
              right: 12,
              bottom: 12,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: const Center(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                      size: 15,
                    )),
              ))
        ],
      ),
    );
  }
}
