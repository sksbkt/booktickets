import 'package:booktickets/utilities/dimensions.dart';
import 'package:flutter/material.dart';

//since its declared outside the class it could be accessed from everywhere in the app
Color primary = const Color(0xff687daf);

class AppThemes {
  static Color mainAppColor = primary;

  static const Color iconColor1 = Color(0xffbfc205);
  static const Color iconColor2 = Color(0xffbfc2df);

  static const Color blueBtnColor = Color(0xd91130ce);
  static const Color containerBGColor = Color(0xbb3ab8b8);

  static const Color selectedColor = Color(0xff5b5d5b);
  static const Color unselectedColor = Color(0xffa6a6a6);

  static const Color backgroundColor = Color(0xffeeedf2);
  static const Color SearchBGColor = Color(0xfff4f6fd);
  static const Color textFieldBgColor = Color(0xfff4f6fd);
  static const Color orangeColor = Color(0xfff37b67);
  static const Color kakiColor = Color(0xffd3cfca);
  static const Color bgShapeColor = Color(0xff189999);

  static const Color shadowColor = Color(0xff989898);

  static const Color textColor = Color(0xff3b3b3b);
  static const Color mainTextColor = Color(0xff333a39);
  static const Color secondaryTextColor = Color(0xffc0d9d6);
  static TextStyle textStyle =
      TextStyle(fontSize: Dimensions.getFontRatio(16), color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: Dimensions.getFontRatio(26), color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: Dimensions.getFontRatio(21), color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle3 =
      TextStyle(fontSize: Dimensions.getFontRatio(17), color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 =
      TextStyle(fontSize: Dimensions.getFontRatio(14), color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
