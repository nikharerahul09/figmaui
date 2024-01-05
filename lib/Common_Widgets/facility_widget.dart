import 'package:figmaui/Data/Model_Class/Place_Model_Class.dart';
import 'package:flutter/material.dart';

import '../Utils/FontFamily.dart';
import '../Utils/const.dart';

class FacilityWidget extends StatelessWidget {
  final Facilities facilities;

  const FacilityWidget({super.key, required this.facilities});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(right: 20),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      child: Column(
        children: [
          Image.asset(facilities.image.toString()),
          const SizedBox(
            height: 6,
          ),
          Text(
            facilities.facility.toString(),
            style: FontFamily.bold(
              fontsize: 11,
              font: Const.Montserrat,
            ),
          ),
        ],
      ),
    );
  }
}
