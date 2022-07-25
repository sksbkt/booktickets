import 'package:booktickets/theme/app_themes.dart';
import 'package:booktickets/utilities/dimensions.dart';
import 'package:booktickets/widgets/text_widget.dart';
import 'package:booktickets/widgets/thick_container_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Dimensions.screenWidth,
        height: Dimensions.height50 * 4,
        child: Container(
          margin: EdgeInsets.only(left: Dimensions.width5 * 2),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(Dimensions.width15),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius21),
                        topRight: Radius.circular(Dimensions.radius21),
                      )),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          TextWidget(
                            text: 'NYC',
                            textStyle: AppThemes.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          const Spacer(),
                          ThickContainer(),
                          Expanded(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  child: LayoutBuilder(
                                    builder: (BuildContext context, BoxConstraints constraints) {
                                      print((constraints.constrainWidth() / 5).floor());
                                      return Flex(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        direction: Axis.horizontal,
                                        children: List.generate(
                                            (constraints.constrainWidth() / 6).floor(),
                                            (index) => SizedBox(
                                                  width: Dimensions.width3,
                                                  height: Dimensions.height1,
                                                  child: DecoratedBox(
                                                    decoration: BoxDecoration(color: Colors.white),
                                                  ),
                                                )),
                                      );
                                    },
                                  ),
                                ),
                                Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ThickContainer(),
                          const Spacer(),
                          TextWidget(
                            text: 'London',
                            textStyle: AppThemes.headLineStyle3.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
