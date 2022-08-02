import 'package:booktickets/theme/app_themes.dart';
import 'package:booktickets/utilities/app_constants.dart';
import 'package:booktickets/utilities/dimensions.dart';
import 'package:booktickets/utilities/shapes.dart';

import 'package:booktickets/widgets/thick_container_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'column_layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isColored;
  const TicketView({Key? key, required this.ticket, this.isColored = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(Dimensions.screenWidth * .85);
    return SizedBox(
        width: Dimensions.getWidthRatio(350),
        child: Container(
          margin: isColored ? EdgeInsets.only(left: Dimensions.width5 * 2) : EdgeInsets.zero,
          child: Stack(children: [
            ClipPath(
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
                                SizedBox(
                                  width: Dimensions.width50 * 2,
                                  child: Text(
                                    ticket['from']['code'],
                                    style: isColored
                                        ? AppThemes.headLineStyle3.copyWith(color: Colors.white)
                                        : AppThemes.headLineStyle3,
                                  ),
                                ),
                                Container(
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
                                SizedBox(
                                  width: Dimensions.width50 * 2,
                                  child: Text(ticket['to']['code'],
                                      textAlign: TextAlign.end,
                                      style: isColored
                                          ? AppThemes.headLineStyle3.copyWith(
                                              color: Colors.white,
                                            )
                                          : AppThemes.headLineStyle3),
                                ),
                              ],
                            ),
                            Gap(Dimensions.height5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: Dimensions.width50 * 2,
                                  child: Text(
                                    ticket['from']['name'],
                                    style: isColored
                                        ? AppThemes.headLineStyle4.copyWith(color: Colors.white)
                                        : AppThemes.headLineStyle4,
                                  ),
                                ),
                                Text(
                                  ticket['flying_time'],
                                  style: isColored
                                      ? AppThemes.headLineStyle4
                                          .copyWith(color: Colors.white, fontWeight: FontWeight.w700)
                                      : AppThemes.headLineStyle4.copyWith(fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: Dimensions.width50 * 2,
                                  child: Text(
                                    ticket['to']['name'],
                                    textAlign: TextAlign.end,
                                    style: isColored
                                        ? AppThemes.headLineStyle4.copyWith(color: Colors.white)
                                        : AppThemes.headLineStyle4,
                                  ),
                                ),
                              ],
                            ),
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
                    Container(
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
                    )
                  ],
                ),
                //Cutting dots
                Positioned(
                  width: Dimensions.getWidthRatio(350),
                  top: Dimensions.height10 * 8 - (Dimensions.height1 * 2) / 2,
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
                                      width: Dimensions.width5,
                                      height: Dimensions.height1 * 2,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: isColored ? Colors.white : AppThemes.objectBlueColor)),
                                    )),
                          );
                        }),
                      )
                    ],
                  ),
                ),
                Positioned(
                    width: Dimensions.getWidthRatio(350),
                    top: (Dimensions.height10 * 8 - (Dimensions.height1 * 2) / 2) * 2,
                    child: Divider(
                      color: AppThemes.unselectedColor,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    )),
              ]),
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
          ]),
        ));
  }
}
