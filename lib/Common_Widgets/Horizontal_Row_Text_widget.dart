import 'package:flutter/material.dart';

import '../Utils/FontFamily.dart';
import '../Utils/const.dart';

class Horizontal_Row_Text_widget extends StatelessWidget {
  final String? text1;
  final String? text2;
  const Horizontal_Row_Text_widget({super.key, this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1 ?? "",
          style: FontFamily.bold(
              fontsize: 20,
              font: Const.Montserrat,
              letterSpacing: 0.7),
        ),
        Text(
          text2 ?? "",
          style: FontFamily.bold(color: Colors.blue,
              fontsize: 13,
              font: Const.Montserrat,
              letterSpacing: 0.7),
        ),
      ],
    );
  }
}
