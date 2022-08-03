import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../theme/app_themes.dart';
import '../utilities/dimensions.dart';
import '../utilities/helpers.dart';

typedef CalculatedSize = void Function(Size size);

class AppColumnLayout extends StatelessWidget {
  final String? firstText;
  final String SecondText;
  final CrossAxisAlignment crossAxisAlignment;
  final bool isColored;
  final Widget? firstWidget;
  final CalculatedSize? getSize;

  const AppColumnLayout(
      {Key? key,
      this.getSize,
      this.firstText,
      required this.SecondText,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.isColored = true,
      this.firstWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        MeasureSize(
          onChange: getSize ?? (size) {},
          child: firstWidget ??
              Text(
                firstText ?? '',
                style: isColored ? AppThemes.headLineStyle3.copyWith(color: Colors.white) : AppThemes.headLineStyle3,
              ),
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
