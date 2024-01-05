import 'package:flutter/material.dart';

import '../Utils/FontFamily.dart';
import '../Utils/const.dart';

class HorizontalListViewWidget extends StatelessWidget {
  final String Category;

  final bool selected;

  const HorizontalListViewWidget(
      {super.key, required this.Category, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: selected ? Colors.grey.shade200 : Colors.transparent,
          borderRadius: BorderRadius.circular(25)),
      child: Center(
          child: Text(
        Category,
        style: selected
            ? FontFamily.bold(fontsize: 12, color: Colors.blueAccent,font: Const.Montserrat)
            : FontFamily.regular(fontsize: 12, color: Colors.black,font: Const.Montserrat),
      )),
    );
  }
}
