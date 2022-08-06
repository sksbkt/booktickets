import 'package:booktickets/theme/app_themes.dart';
import 'package:booktickets/utilities/dimensions.dart';
import 'package:booktickets/widgets/column_layout_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utilities/shapes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.backgroundColor,
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        padding: EdgeInsets.all(Dimensions.getWidthRatio(20)),
        children: [
          Gap(Dimensions.getHeightRatio(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(Dimensions.getHeightRatio(10)),
              Container(
                width: Dimensions.getWidthRatio(90),
                height: Dimensions.getHeightRatio(90),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.getWidthRatio(10)),
                    image: DecorationImage(image: AssetImage('assets/images/img_1.png'))),
              ),
              Gap(Dimensions.getWidthRatio(10)),
              Container(
                height: Dimensions.getHeightRatio(90),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Book tickets',
                      style: AppThemes.headLineStyle1,
                    ),
                    Text(
                      'New york',
                      style: AppThemes.headLineStyle3.copyWith(
                          fontSize: Dimensions.getFontRatio(16),
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: Dimensions.getHeightRatio(3),
                        bottom: Dimensions.getHeightRatio(3),
                        right: Dimensions.getWidthRatio(9),
                        left: Dimensions.getWidthRatio(3),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.getBorderRatio(100)),
                          color: AppThemes.container2BGColor),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(Dimensions.getHeightRatio(5)),
                            decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff526799)),
                            child: Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: Dimensions.getHeightRatio(15),
                            ),
                          ),
                          Gap(Dimensions.getWidthRatio(5)),
                          Text(
                            'Premium status',
                            style: TextStyle(
                                fontSize: Dimensions.getFontRatio(16),
                                color: Color(0xff526799),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Gap(Dimensions.getHeightRatio(5)),
                  InkWell(
                    onTap: () {
                      print('tapped');
                    },
                    child: Text(
                      'Edit',
                      style: AppThemes.textStyle.copyWith(color: AppThemes.mainAppColor),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(Dimensions.getWidthRatio(5)),
          Divider(
            color: Colors.grey.shade300,
            thickness: 1,
          ),
          Gap(Dimensions.getWidthRatio(5)),
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimensions.getBorderRatio(25)),
            child: Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                Container(
                  // alignment: Alignment.topCenter,
                  height: Dimensions.getHeightRatio(90),
                  decoration: BoxDecoration(
                    color: AppThemes.container3BGColor,
                  ),
                ),
                Positioned(
                  top: -30,
                  right: -30,
                  child: SizedBox(
                    height: Dimensions.getHeightRatio(90),
                    width: Dimensions.getWidthRatio(90),
                    child: CustomPaint(
                      painter: RPSCustomPainter(color: AppThemes.bgShape3Color.withOpacity(1)),
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
                      painter: RPSCustomPainter(color: AppThemes.bgShape3Color.withOpacity(.2)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.getWidthRatio(15)),
                  height: Dimensions.getHeightRatio(90),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          size: 30,
                        ),
                      ),
                      Gap(Dimensions.getWidthRatio(5)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You have got new award!',
                            style: AppThemes.headLineStyle1.copyWith(fontSize: 23, color: Colors.white),
                          ),
                          Text(
                            'You have 150 flights in a year.',
                            style: AppThemes.headLineStyle2.copyWith(fontSize: 18, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(Dimensions.getWidthRatio(20)),
          Text(
            'Accmulated miles',
            style: AppThemes.headLineStyle1,
          ),
          Gap(Dimensions.getWidthRatio(15)),
          Text(
            textAlign: TextAlign.center,
            '192802',
            style: AppThemes.headLineStyle1.copyWith(fontSize: 45, fontWeight: FontWeight.w600),
          ),
          Gap(Dimensions.getWidthRatio(15)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      '192802',
                      style: AppThemes.headLineStyle2.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      '192802',
                      style: AppThemes.headLineStyle2.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Gap(Dimensions.getWidthRatio(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '23042', SecondText: 'Miles', isColored: false),
                    AppColumnLayout(
                        firstText: 'United states Airlines',
                        SecondText: 'Holder',
                        isColored: false,
                        crossAxisAlignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(Dimensions.getWidthRatio(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '289', SecondText: 'Miles', isColored: false),
                    AppColumnLayout(
                        firstText: 'Fly Emirates',
                        SecondText: 'Holder',
                        isColored: false,
                        crossAxisAlignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(Dimensions.getWidthRatio(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '1431', SecondText: 'Miles', isColored: false),
                    AppColumnLayout(
                        firstText: 'Air france',
                        SecondText: 'Holder',
                        isColored: false,
                        crossAxisAlignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(Dimensions.getWidthRatio(10)),
                InkWell(
                  onTap: () {
                    print('WIP function tapped');
                  },
                  child: Text(
                    'How to get more miles',
                    style: AppThemes.headLineStyle3.copyWith(color: AppThemes.mainAppColor),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
