import 'package:booktickets/main.dart';
import 'package:flutter/material.dart';

class Dimensions {
  static double screenHeight = MediaQuery.of(navigatorKey.currentContext!).size.height;
  static double screenWidth = MediaQuery.of(navigatorKey.currentContext!).size.width;

  static double radius5 = _heightRatio(5);
  static double radius15 = _heightRatio(15);
  static double radius21 = _heightRatio(21);

  static double fontSize20 = _heightRatio(20);
  static double fontSize24 = _heightRatio(24);

  static double width3 = _widthRatio(3);
  static double width5 = _widthRatio(5);
  static double width10 = _widthRatio(10);
  static double width15 = _widthRatio(15);
  static double width12 = _widthRatio(12);
  static double width20 = _widthRatio(20);
  static double width50 = _widthRatio(50);

  static double height1 = _heightRatio(1);
  static double height5 = _heightRatio(5);
  static double height10 = _heightRatio(10);
  static double height12 = _heightRatio(12);
  static double height15 = _heightRatio(15);
  static double height40 = _heightRatio(40);
  static double height50 = _heightRatio(50);

  static double _heightRatio(double input) => screenHeight / (screenHeight / input);
  static double _widthRatio(double input) => screenWidth / (screenWidth / input);
}
