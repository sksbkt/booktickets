import 'package:booktickets/theme/app_themes.dart';
import 'package:booktickets/utilities/app_constants.dart';
import 'package:booktickets/utilities/dimensions.dart';
import 'package:booktickets/utilities/shapes.dart';
import 'package:booktickets/widgets/head_link_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/icon_text_widget.dart';
import '../widgets/ticket_tabs_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppThemes.backgroundColor,
        body: ListView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding:
              EdgeInsets.symmetric(horizontal: Dimensions.getHeightRatio(20), vertical: Dimensions.getHeightRatio(20)),
          children: [
            Gap(Dimensions.getHeightRatio(40)),
            //what are...
            Text(
              AppConstats.WHAT_ARE_YOU_LOOKING_FOR_TEXT,
              style: AppThemes.headLineStyle1.copyWith(fontSize: Dimensions.getFontRatio(35)),
            ),
            Gap(Dimensions.getHeightRatio(20)),
            //airlines and hotels
            TicketTabs(
              tab1Text: AppConstats.AIRLINE_TICKETS_TEXT,
              tab2Text: AppConstats.HOTELS_TEXT,
            ),
            Gap(Dimensions.getHeightRatio(25)),
            const IconTextWidget(
              text: AppConstats.DEPARTURE_TEXT,
              icon: Icons.flight_takeoff_rounded,
            ),
            Gap(Dimensions.height10),
            const IconTextWidget(text: AppConstats.ARRIVAL_TEXT, icon: Icons.flight_land_rounded),
            Gap(Dimensions.getHeightRatio(20)),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(Dimensions.getWidthRatio(18)),
              decoration: BoxDecoration(
                color: AppThemes.blueBtnColor,
                borderRadius: BorderRadius.circular(Dimensions.getBorderRatio(10)),
              ),
              child: Text(
                AppConstats.FIND_TICKETS_TEXT,
                style: AppThemes.textStyle.copyWith(fontSize: Dimensions.getFontRatio(16), color: Colors.white),
              ),
            ),
            Gap(Dimensions.getHeightRatio(25)),
            HeadLinkWidget(text: AppConstats.UPCOMING_FLIGHTS_TEXT),
            Gap(Dimensions.height10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimensions.getBorderRatio(17)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 1,
                            color: AppThemes.shadowColor.withOpacity(.1))
                      ]),
                  padding: EdgeInsets.all(Dimensions.getHeightRatio(15)),
                  height: Dimensions.getHeightRatio(400),
                  width: Dimensions.screenWidth * .42,
                  child: Column(
                    children: [
                      Container(
                        height: Dimensions.getHeightRatio(190),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.getBorderRatio(12)),
                            image: DecorationImage(image: AssetImage('assets/images/sit.jpg'), fit: BoxFit.cover)),
                      ),
                      Gap(Dimensions.getHeightRatio(5)),
                      Text('20% off on business class tickets from international airlines',
                          style: AppThemes.headLineStyle2)
                    ],
                  ),
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(Dimensions.getBorderRatio(18)),
                      child: Stack(
                        clipBehavior: Clip.hardEdge,
                        children: [
                          Container(
                            // alignment: Alignment.topCenter,
                            width: Dimensions.screenWidth * .44,
                            height: Dimensions.getHeightRatio(175),
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                  center: FractionalOffset(.2, .8),
                                  radius: 0.3,
                                  colors: [AppThemes.bgShapeColor.withOpacity(.1), AppThemes.bgShapeColor]),
                              color: AppThemes.containerBGColor,
                            ),
                          ),
                          Positioned(
                            top: -30,
                            right: -30,
                            child: SizedBox(
                              height: Dimensions.getHeightRatio(90),
                              width: Dimensions.getWidthRatio(90),
                              child: CustomPaint(
                                painter: RPSCustomPainter(color: AppThemes.bgShapeColor.withOpacity(1)),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -130,
                            right: -130,
                            child: SizedBox(
                              height: Dimensions.getHeightRatio(300),
                              width: Dimensions.getWidthRatio(300),
                              child: CustomPaint(
                                painter: RPSCustomPainter(color: AppThemes.bgShapeColor.withOpacity(.2)),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(Dimensions.getHeightRatio(15)),
                            width: Dimensions.screenWidth * .44,
                            height: Dimensions.getHeightRatio(174),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Discount \nfor survey',
                                  style: AppThemes.headLineStyle2.copyWith(color: Colors.white),
                                ),
                                Text(
                                  'Take a survey about our services to get a chance to win our grand rewards'
                                  '',
                                  style: AppThemes.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontSize: Dimensions.getFontRatio(18),
                                    fontWeight: FontWeight.w500,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 4,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(Dimensions.height10),
                    Container(
                      padding: EdgeInsets.all(Dimensions.width15),
                      // alignment: Alignment.topCenter,
                      width: Dimensions.screenWidth * .44,
                      height: Dimensions.getHeightRatio(215),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: FractionalOffset(1, 0),
                              end: FractionalOffset(.2, .8),
                              colors: [AppThemes.bgShapeColor2.withOpacity(.7), AppThemes.bgShapeColor2]),
                          borderRadius: BorderRadius.circular(Dimensions.getBorderRatio(18))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Take love',
                            style: AppThemes.headLineStyle2.copyWith(color: Colors.white),
                          ),
                          Gap(Dimensions.height5),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: Dimensions.getFontRatio(32)),
                            ),
                            TextSpan(
                              text: '😎',
                              style: TextStyle(fontSize: Dimensions.getFontRatio(40)),
                            ),
                            TextSpan(
                              text: '😏',
                              style: TextStyle(fontSize: Dimensions.getFontRatio(32)),
                            ),
                          ])),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
