import 'package:booktickets/theme/app_themes.dart';
import 'package:booktickets/utilities/app_constants.dart';
import 'package:booktickets/utilities/dimensions.dart';
import 'package:booktickets/utilities/shapes.dart';

import 'package:booktickets/widgets/thick_container_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'column_layout_widget.dart';
import 'layout_builder_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isColored;
  const TicketView({Key? key, required this.ticket, this.isColored = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(Dimensions.screenWidth * .85);
    return Container(
        alignment: Alignment.center,
        width: Dimensions.getWidthRatio(350),
        child: Stack(
          children: [
            Container(
              margin: isColored ? EdgeInsets.only(left: Dimensions.width5 * 2) : EdgeInsets.zero,
              width: Dimensions.getWidthRatio(350),
              child: ClipPath(
                clipBehavior: Clip.antiAlias,

                ///WIP
                clipper: isColored
                    ? CircularClips(
                        circleHeight: Dimensions.height10 * 8,
                      )
                    : LargeCircularClips(height: 500, circleHeight: Dimensions.height10 * 8),

                child: Stack(children: [
                  Column(
                    children: [
                      //blue part of ticket
                      Container(
                          padding: EdgeInsets.all(Dimensions.width15),
                          width: double.maxFinite,
                          height: Dimensions.height10 * 8,
                          decoration: BoxDecoration(
                              color: isColored ? AppThemes.mainAppColor : Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(Dimensions.radius21),
                                topRight: Radius.circular(Dimensions.radius21),
                              )),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AppColumnLayout(
                                      firstText: ticket['from']['code'],
                                      SecondText: ticket['from']['name'],
                                      isColored: isColored),
                                  // SizedBox(
                                  //   width: Dimensions.width50 * 2,
                                  //   child: Text(
                                  //     ticket['from']['code'],
                                  //     style: isColored
                                  //         ? AppThemes.headLineStyle3.copyWith(color: Colors.white)
                                  //         : AppThemes.headLineStyle3,
                                  //   ),
                                  // ),

                                  AppColumnLayout(
                                    firstWidget: Container(
                                      width: Dimensions.width50 * 2,
                                      child: Row(
                                        children: [
                                          ThickContainer(isColored: isColored),
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
                                                                  width: Dimensions.getWidthRatio(3),
                                                                  height: Dimensions.height1,
                                                                  child: DecoratedBox(
                                                                    decoration: BoxDecoration(
                                                                        color: isColored
                                                                            ? Colors.white
                                                                            : AppThemes.objectBlueColor),
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
                                                    color: isColored ? Colors.white : AppThemes.objectBlueColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          ThickContainer(
                                            isColored: isColored,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SecondText: ticket['flying_time'],
                                    isColored: isColored,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                  ),
                                  AppColumnLayout(
                                    firstText: ticket['to']['code'],
                                    SecondText: ticket['to']['name'],
                                    isColored: isColored,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                  ),
                                  // SizedBox(
                                  //   width: Dimensions.width50 * 2,
                                  //   child: Text(ticket['to']['code'],
                                  //       textAlign: TextAlign.end,
                                  //       style: isColored
                                  //           ? AppThemes.headLineStyle3.copyWith(
                                  //               color: Colors.white,
                                  //             )
                                  //           : AppThemes.headLineStyle3),
                                  // ),
                                ],
                              ),
                              // Gap(Dimensions.height5),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     SizedBox(
                              //       width: Dimensions.width50 * 2,
                              //       child: Text(
                              //         ticket['from']['name'],
                              //         style: isColored
                              //             ? AppThemes.headLineStyle4.copyWith(color: Colors.white)
                              //             : AppThemes.headLineStyle4,
                              //       ),
                              //     ),
                              //     Text(
                              //       ticket['flying_time'],
                              //       style: isColored
                              //           ? AppThemes.headLineStyle4
                              //               .copyWith(color: Colors.white, fontWeight: FontWeight.w700)
                              //           : AppThemes.headLineStyle4.copyWith(fontWeight: FontWeight.w700),
                              //     ),
                              //     SizedBox(
                              //       width: Dimensions.width50 * 2,
                              //       child: Text(
                              //         ticket['to']['name'],
                              //         textAlign: TextAlign.end,
                              //         style: isColored
                              //             ? AppThemes.headLineStyle4.copyWith(color: Colors.white)
                              //             : AppThemes.headLineStyle4,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          )),
                      //red part of ticket
                      Container(
                        width: double.maxFinite,
                        height: Dimensions.height10 * 8,
                        decoration: BoxDecoration(
                            color: isColored ? AppThemes.orangeColor : Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(Dimensions.radius21),
                                bottomRight: Radius.circular(Dimensions.radius21))),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppColumnLayout(
                                          firstText: ticket['date'],
                                          SecondText: AppConstats.DATE_TEXT,
                                          isColored: isColored,
                                        ),
                                        AppColumnLayout(
                                          firstText: ticket['flying_time'],
                                          SecondText: AppConstats.DEPARTURE_TEXT,
                                          isColored: isColored,
                                        ),
                                        AppColumnLayout(
                                          firstText: ticket['number'].toString(),
                                          SecondText: AppConstats.NUMBER_TEXT,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          isColored: isColored,
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
                      const Divider(
                        color: AppThemes.unselectedColor,
                        thickness: 1,
                        height: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Container(
                        height: Dimensions.getHeightRatio(80),
                        color: Colors.white,
                        padding: EdgeInsets.all(Dimensions.width15),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          AppColumnLayout(
                            firstText: 'Flutter DB',
                            SecondText: 'Passenger',
                            isColored: isColored,
                          ),
                          AppColumnLayout(
                            firstText: '5221 478566',
                            SecondText: 'Passport',
                            crossAxisAlignment: CrossAxisAlignment.end,
                            isColored: isColored,
                          ),
                        ]),
                      ),

                      Stack(
                        children: [
                          Container(
                            height: Dimensions.getHeightRatio(80),
                            color: Colors.white,
                            padding: EdgeInsets.all(Dimensions.width15),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                              AppColumnLayout(
                                firstText: '0055 444 77147',
                                SecondText: 'Number of E-ticket',
                                isColored: isColored,
                                getSize: (s) {
                                  print('Size: ${s.toString()}');
                                },
                              ),
                              AppColumnLayout(
                                firstText: 'B2SG28',
                                SecondText: 'Booking code',
                                crossAxisAlignment: CrossAxisAlignment.end,
                                isColored: isColored,
                              ),
                            ]),
                          ),
                          AppLayoutBuilder(
                            isColored: isColored,
                            density: 10,
                            top: 0,
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            height: Dimensions.getHeightRatio(80),
                            color: Colors.white,
                            padding: EdgeInsets.all(Dimensions.width15),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                              AppColumnLayout(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                firstWidget: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        'assets/images/visa.png',
                                        scale: 11,
                                      ),
                                      Gap(
                                        Dimensions.getWidthRatio(10),
                                      ),
                                      Text(
                                        '***2462',
                                        style: AppThemes.headLineStyle3,
                                      )
                                    ],
                                  ),
                                ),
                                SecondText: 'Payment method',
                                isColored: isColored,
                              ),
                              AppColumnLayout(
                                firstText: '\$249.99',
                                SecondText: 'Price',
                                crossAxisAlignment: CrossAxisAlignment.end,
                                isColored: isColored,
                              ),
                            ]),
                          ),
                          AppLayoutBuilder(
                            isColored: isColored,
                            dotThickness: 2,
                            dotWidth: 2,
                            density: 20,
                            top: 0,
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Cutting dots
                  //TODO: we are gonna use a more optimal way to put this widget in the correct position in the app body
                  AppLayoutBuilder(
                    isColored: isColored,
                    top: Dimensions.height10 * 8 - (Dimensions.height1 * 2) / 2,
                  ),

                  // Positioned(
                  //     width: Dimensions.getWidthRatio(350),
                  //     top: (Dimensions.height10 * 8 - (Dimensions.height1 * 2) / 2) * 2,
                  //     child: Divider(
                  //       color: AppThemes.unselectedColor,
                  //       thickness: 1,
                  //       indent: 10,
                  //       endIndent: 10,
                  //     )),
                ]),
              ),
            ),
            !isColored
                ?
                // SizedBox(
                //         width: Dimensions.screenWidth * .85,
                //         height: 160,
                //         child: CustomPaint(painter: TicketViewBorderPainter(color: Colors.black.withOpacity(.3))))
                //     :
                CustomPaint(
                    painter: LargeTicketViewBorderPainter(
                        height: 500,
                        width: 350,
                        circleHeight: Dimensions.height10 * 8,
                        color: Colors.black.withOpacity(.3)))
                : Container(),
          ],
        ));
  }
}
