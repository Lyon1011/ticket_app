import 'package:flutter/material.dart';

Color text = const Color(0xFF3b3b3b);

class AppStyles {
  static Color textColor = text;
  static Color bgColor = const Color(0xFFeeedF2);

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle headLineStyle3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
}
