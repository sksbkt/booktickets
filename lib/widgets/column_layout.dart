import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../theme/app_themes.dart';
import '../utilities/dimensions.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String SecondText;
  final CrossAxisAlignment crossAxisAlignment;
  final bool isColored;

  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.SecondText,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.isColored = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          firstText,
          style: isColored ? AppThemes.headLineStyle3.copyWith(color: Colors.white) : AppThemes.headLineStyle3,
        ),
        Gap(Dimensions.getHeightRatio(5)),
        Text(
          SecondText,
          style: isColored ? AppThemes.headLineStyle4.copyWith(color: Colors.white) : AppThemes.headLineStyle4,
        ),
      ],
    );
  }
}
