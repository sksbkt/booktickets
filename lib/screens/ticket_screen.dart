import 'package:booktickets/theme/app_themes.dart';
import 'package:booktickets/utilities/app_constants.dart';
import 'package:booktickets/utilities/data/app_info_list.dart';
import 'package:booktickets/utilities/dimensions.dart';
import 'package:booktickets/widgets/ticket_tabs_widget.dart';
import 'package:booktickets/widgets/ticket_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.all(Dimensions.getHeightRatio(20)),
          children: [
            Gap(Dimensions.getHeightRatio(40)),
            Text(
              AppConstats.TICKETS_TEXT,
              style: AppThemes.headLineStyle1.copyWith(fontSize: 35),
            ),
            Gap(Dimensions.getHeightRatio(25)),
            TicketTabs(tab1Text: AppConstats.UPCOMING_TEXT, tab2Text: AppConstats.PREVIOUS_TEXT),
            Gap(Dimensions.getHeightRatio(25)),
            Container(
              // padding: EdgeInsets.only(left: Dimensions.width15),
              child: TicketView(
                ticket: ticketList[0],
                isColored: false,
              ),
            ),
            Gap(Dimensions.getHeightRatio(25)),
            Container(
              // padding: EdgeInsets.only(left: Dimensions.width15),
              child: TicketView(
                ticket: ticketList[0],
                isColored: true,
              ),
            ),
          ],
        ),
        Positioned(
          top: Dimensions.getHeightRatio(262),
          left: Dimensions.getWidthRatio(21),
          child: Container(
            height: Dimensions.getHeightRatio(17),
            width: Dimensions.getWidthRatio(17),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppThemes.textColor, width: 2)),
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
            ),
          ),
        ),
        Positioned(
          top: Dimensions.getHeightRatio(262),
          right: Dimensions.getWidthRatio(21),
          child: Container(
            height: Dimensions.getHeightRatio(17),
            width: Dimensions.getWidthRatio(17),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppThemes.textColor, width: 2)),
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
            ),
          ),
        )
      ]),
    );
  }
}
