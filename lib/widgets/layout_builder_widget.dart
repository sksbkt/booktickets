import 'package:flutter/material.dart';

import '../theme/app_themes.dart';
import '../utilities/dimensions.dart';

class AppLayoutBuilder extends StatelessWidget {
  ///Cant be lower than 5 or you may get an error
  final int density;
  final bool isColored;
  final double dotThickness;
  final double dotWidth;

  ///@top value for the @Positioned widget
  final double top;

  const AppLayoutBuilder(
      {Key? key, required this.isColored, this.top = 0, this.density = 10, this.dotThickness = 2, this.dotWidth = 4})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: Dimensions.getWidthRatio(350),
      top: top,
      child: Row(
        children: [
          Expanded(
            child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
              return Flex(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: List.generate(
                    (constraints.constrainWidth() / density).floor(),
                    (index) => SizedBox(
                          width: dotWidth,
                          height: dotThickness,
                          child: DecoratedBox(
                              decoration: BoxDecoration(color: isColored ? Colors.white : AppThemes.objectBlueColor)),
                        )),
              );
            }),
          )
        ],
      ),
    );
  }
}
