import 'package:booktickets/theme/app_themes.dart';
import 'package:booktickets/utilities/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool isColored;
  const ThickContainer({this.isColored = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.width5 / 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius5 * 4),
          border:
              Border.all(width: Dimensions.width5 / 2, color: (isColored) ? Colors.white : AppThemes.objectBlueColor)),
    );
  }
}
