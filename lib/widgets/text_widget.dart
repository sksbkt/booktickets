import 'package:booktickets/theme/app_themes.dart';
import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  String text;
  double fontSize;
  Color fontColor;
  FontWeight fontWeight;
  TextStyle? textStyle;

  TextWidget({
    required this.text,
    this.fontSize = 20,
    this.fontColor = AppThemes.secondaryTextColor,
    this.fontWeight = FontWeight.normal,
    this.textStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ?? TextStyle(fontSize: fontSize, color: fontColor, fontWeight: fontWeight),
    );
  }
}
