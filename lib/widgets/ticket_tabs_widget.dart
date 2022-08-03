import 'package:flutter/material.dart';

import '../theme/app_themes.dart';
import '../utilities/dimensions.dart';

class TicketTabs extends StatelessWidget {
  final String tab1Text;
  final String tab2Text;
  const TicketTabs({
    Key? key,
    required this.tab1Text,
    required this.tab2Text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.getWidthRatio(3.5)),
      decoration: BoxDecoration(
          color: AppThemes.SearchBGColor, borderRadius: BorderRadius.circular(Dimensions.getBorderRatio(52))),
      height: 40,
      child: Row(
        children: [
          //airline tickets
          Container(
            padding: EdgeInsets.symmetric(vertical: Dimensions.getHeightRatio(7)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(
                  Dimensions.getBorderRatio(50),
                ))),
            width: Dimensions.screenWidth * .44,
            child: Center(
              child: Text(
                tab1Text,
                style: AppThemes.headLineStyle1.copyWith(fontSize: 16),
              ),
            ),
          ),
          //hotels
          Container(
            padding: EdgeInsets.symmetric(vertical: Dimensions.getHeightRatio(7)),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(
                  Dimensions.getBorderRatio(50),
                ))),
            width: Dimensions.screenWidth * .44,
            child: Center(
              child: Text(
                tab2Text,
                style: AppThemes.headLineStyle1.copyWith(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
