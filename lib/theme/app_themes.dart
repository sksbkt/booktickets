import 'package:flutter/material.dart';

//since its declared outside the class it could be accessed from everywhere in the app
Color primary = const Color(0xff687daf);

class AppThemes {
  static Color mainAppColor = primary;

  static const Color iconColor1 = Color(0xffbfc205);

  static const Color selectedColor = Color(0xff5b5d5b);
  static const Color unselectedColor = Color(0xffa6a6a6);

  static const Color backgroundColor = Color(0xffeeedf2);
  static const Color textFieldBgColor = Color(0xfff4f6fd);
  static const Color orangeColor = Color(0xfff37b67);

  static const Color shadowColor = Color(0xff989898);

  static const Color textColor = Color(0xff3b3b3b);
  static const Color mainTextColor = Color(0xff333a39);
  static const Color secondaryTextColor = Color(0xffc0d9d6);
  static TextStyle textStyle = TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle1 = TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(fontSize: 21, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle3 = TextStyle(fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
