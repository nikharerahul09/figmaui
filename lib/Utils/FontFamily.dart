import 'package:flutter/material.dart';

import 'dart:ui' as ui;

import 'const.dart';

class FontFamily {
  static const double _defaultFontSize = 17;

  static TextStyle regular(
      {double fontsize = _defaultFontSize,
        bool enabledUnderline = false,
        Color color = Colors.black,
        String font = Const.Hiatus,
        bool enabledLineThrough = false,
        List<ui.Shadow>? shadows}) {
    return TextStyle(
      shadows: shadows,
      fontSize: fontsize,
      fontFamily: font,
      color: color,
      decoration: TextDecoration.combine([
        enabledUnderline ? TextDecoration.underline : TextDecoration.none,
        enabledLineThrough ? TextDecoration.lineThrough : TextDecoration.none
      ]),
    );
  }

  static TextStyle bold(
      {double fontsize = _defaultFontSize,
        Color color = Colors.black,
        String font = Const.Montserrat,
        bool enabledUnderline = false,
        double letterSpacing = 0.0,
        bool enabledLineThrough = false,
        List<ui.Shadow>? shadows}) {
    return TextStyle(
      shadows: shadows,
      color: color,
      fontSize: fontsize,
      fontFamily: font,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.combine([
        enabledUnderline ? TextDecoration.underline : TextDecoration.none,
        enabledLineThrough ? TextDecoration.lineThrough : TextDecoration.none
      ]),
      letterSpacing: letterSpacing,
    );
  }
}
