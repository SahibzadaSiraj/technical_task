import 'package:flutter/material.dart';

class TextWidgetClass {
  static customText({required String text, required TextStyle textStyle}) =>
      Text(
        text,
        style: textStyle,
      );

  static customTextStyle(
          {required double textSize,
          required FontWeight textWeight,
          required Color color}) =>
      TextStyle(fontSize: textSize, fontWeight: textWeight, color: color);
}
