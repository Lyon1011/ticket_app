import 'package:flutter/material.dart';

Color text = const Color(0xFF3b3b3b);
Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color textColor = text;
  static Color bgColor = const Color(0xFFeeedF2);
  static Color primaryColor = primary;
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle headLineStyle3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor,
  );
}
