import 'package:booktickets/theme/app_themes.dart';
import 'package:booktickets/utilities/app_constants.dart';
import 'package:booktickets/utilities/dimensions.dart';
import 'package:booktickets/utilities/shapes.dart';

import 'package:booktickets/widgets/thick_container_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isColored;
  const TicketView({Key? key, required this.ticket, this.isColored = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Dimensions.screenWidth * .85);
    return SizedBox(
        width: 360,
        child: Container(
          margin: EdgeInsets.only(left: Dimensions.width5 * 2),
          child: Stack(children: [
            ClipPath(
              // clipBehavior: Clip.antiAlias,
              ///WIP
              clipper: isColored ? CircularClips() : LargeCircularClips(),

              child: Stack(alignment: Alignment.center, children: [
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
                                      SizedBox(
                                        width: Dimensions.width50 * 2,
                                        child: Text(
                                          ticket['date'],
                                          style: isColored
                                              ? AppThemes.headLineStyle3.copyWith(color: Colors.white)
                                              : AppThemes.headLineStyle3,
                                        ),
                                      ),
                                      Text(
                                        ticket['departure_time'],
                                        style: isColored
                                            ? AppThemes.headLineStyle3.copyWith(color: Colors.white)
                                            : AppThemes.headLineStyle3,
                                      ),
                                      SizedBox(
                                        width: Dimensions.width50 * 2,
                                        child: Text(
                                          ticket['number'].toString(),
                                          textAlign: TextAlign.end,
                                          style: isColored
                                              ? AppThemes.headLineStyle3.copyWith(color: Colors.white)
                                              : AppThemes.headLineStyle3,
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
                                        child: Text(
                                          AppConstats.DATE_TEXT,
                                          style: isColored
                                              ? AppThemes.headLineStyle4.copyWith(color: Colors.white)
                                              : AppThemes.headLineStyle4,
                                        ),
                                      ),
                                      Text(
                                        AppConstats.DEPARTURE_TEXT,
                                        style: isColored
                                            ? AppThemes.headLineStyle4.copyWith(color: Colors.white)
                                            : AppThemes.headLineStyle4,
                                      ),
                                      SizedBox(
                                        width: Dimensions.width50 * 2,
                                        child: Text(
                                          AppConstats.NUMBER_TEXT,
                                          textAlign: TextAlign.end,
                                          style: isColored
                                              ? AppThemes.headLineStyle4.copyWith(color: Colors.white)
                                              : AppThemes.headLineStyle4,
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
                    height: Dimensions.height10 * 3,
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
                ),
              ]),
            ),
            !isColored
                ?
                // SizedBox(
                //         width: Dimensions.screenWidth * .85,
                //         height: 160,
                //         child: CustomPaint(painter: TicketViewBorderPainter(color: Colors.black.withOpacity(.3))))
                //     :
                SizedBox(
                    width: Dimensions.screenWidth * .85,
                    height: 160,
                    child: CustomPaint(painter: LargeTicketViewBorderPainter(color: Colors.black.withOpacity(.3))))
                : Container(),
          ]),
        ));
  }
}
