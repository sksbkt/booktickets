import 'package:booktickets/theme/app_themes.dart';
import 'package:booktickets/utilities/app_constants.dart';
import 'package:booktickets/utilities/dimensions.dart';
import 'package:booktickets/widgets/text_widget.dart';
import 'package:booktickets/widgets/thick_container_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Dimensions.screenWidth * .85,
        child: Container(
          margin: EdgeInsets.only(left: Dimensions.width5 * 2),
          child: ClipPath(
            clipBehavior: Clip.antiAlias,
            clipper: CircularClips(),
            child: Stack(alignment: Alignment.center, children: [
              Column(
                children: [
                  //blue part of ticket
                  Container(
                      padding: EdgeInsets.all(Dimensions.width15),
                      width: double.maxFinite,
                      height: 80,
                      decoration: BoxDecoration(
                          color: AppThemes.mainAppColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius21),
                            topRight: Radius.circular(Dimensions.radius21),
                          )),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: Dimensions.width50 * 2,
                                child: Text(
                                  'NYC',
                                  style: AppThemes.headLineStyle3.copyWith(color: Colors.white),
                                ),
                              ),
                              Container(
                                width: Dimensions.width50 * 2,
                                child: Row(
                                  children: [
                                    ThickContainer(),
                                    Expanded(
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          SizedBox(
                                            child: LayoutBuilder(
                                              builder: (BuildContext context, BoxConstraints constraints) {
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
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.width50 * 2,
                                child: Text('LDN',
                                    textAlign: TextAlign.end,
                                    style: AppThemes.headLineStyle3.copyWith(
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          ),
                          Gap(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: Dimensions.width50 * 2,
                                child: TextWidget(
                                  text: 'New York',
                                  textStyle: AppThemes.headLineStyle4.copyWith(color: Colors.white),
                                ),
                              ),
                              TextWidget(
                                text: '8H 30M',
                                textStyle:
                                    AppThemes.headLineStyle4.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: Dimensions.width50 * 2,
                                child: Text(
                                  'London',
                                  textAlign: TextAlign.end,
                                  style: AppThemes.headLineStyle4.copyWith(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  //red part of ticket
                  Container(
                    width: double.maxFinite,
                    height: 80,
                    decoration: BoxDecoration(
                        color: AppThemes.orangeColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(Dimensions.radius21),
                            bottomRight: Radius.circular(Dimensions.radius21))),
                    child: Column(
                      children: [
                        //Cutting dots

                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: Dimensions.width50 * 2,
                                      child: TextWidget(
                                        text: '1 MAY',
                                        textStyle: AppThemes.headLineStyle3.copyWith(color: Colors.white),
                                      ),
                                    ),
                                    TextWidget(
                                      text: '8:00 AM',
                                      textStyle: AppThemes.headLineStyle3.copyWith(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: Dimensions.width50 * 2,
                                      child: Text(
                                        '23',
                                        textAlign: TextAlign.end,
                                        style: AppThemes.headLineStyle3.copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(Dimensions.height10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: Dimensions.width50 * 2,
                                      child: TextWidget(
                                        text: AppConstats.DATE_TEXT,
                                        textStyle: AppThemes.headLineStyle4.copyWith(color: Colors.white),
                                      ),
                                    ),
                                    TextWidget(
                                      text: AppConstats.DEPARTURE_TEXT,
                                      textStyle: AppThemes.headLineStyle4.copyWith(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: Dimensions.width50 * 2,
                                      child: Text(
                                        AppConstats.NUMBER_TEXT,
                                        textAlign: TextAlign.end,
                                        style: AppThemes.headLineStyle4.copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Cutting dots
              Container(
                child: SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Expanded(
                        child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            direction: Axis.horizontal,
                            children: List.generate(
                                (constraints.constrainWidth() / 10).floor(),
                                (index) => SizedBox(
                                      width: 5,
                                      height: 2,
                                      child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
                                    )),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}

class CircularClips extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    double circleSize = 25;

    path.lineTo(0.0, size.height / 2 - circleSize / 2);
    path.relativeArcToPoint(Offset(0, circleSize), radius: Radius.circular(10));
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height / 2 + circleSize / 2);
    path.arcToPoint(Offset(size.width, size.height / 2 - circleSize / 2), radius: Radius.circular(10));
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
