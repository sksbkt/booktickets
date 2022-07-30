import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../theme/app_themes.dart';
import '../utilities/dimensions.dart';

class IconTextWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconTextWidget({
    required this.text,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(Dimensions.getWidthRatio(15)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimensions.getBorderRatio(10)),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppThemes.iconColor2,
          ),
          Gap(Dimensions.getWidthRatio(10)),
          Text(
            text,
            style: AppThemes.headLineStyle4.copyWith(fontSize: Dimensions.getFontRatio(16)),
          ),
        ],
      ),
    );
  }
}
