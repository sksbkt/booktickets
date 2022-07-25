import 'package:booktickets/theme/app_themes.dart';
import 'package:booktickets/utilities/app_constants.dart';
import 'package:booktickets/utilities/dimensions.dart';

import 'package:booktickets/widgets/text_widget.dart';
import 'package:booktickets/widgets/ticket_view_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.backgroundColor,
      body: ListView(children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
            child: Column(
              children: [
                Gap(Dimensions.height40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: AppConstats.GREETING_TEXT,
                          textStyle: AppThemes.headLineStyle3,
                        ),
                        const Gap(5),
                        TextWidget(
                          text: AppConstats.BOOK_TICKETS_TEXT,
                          textStyle: AppThemes.headLineStyle1,
                        )
                      ],
                    ),
                    Container(
                      width: Dimensions.width50,
                      height: Dimensions.height50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius15)),
                          image: DecorationImage(image: AssetImage('assets/images/img_1.png'), fit: BoxFit.cover)),
                    )
                  ],
                ),
                Gap(Dimensions.height10 * 2),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width12, vertical: Dimensions.height10),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(offset: Offset(0, 2), blurRadius: 4, color: AppThemes.shadowColor.withOpacity(0.3))
                  ], color: AppThemes.textFieldBgColor, borderRadius: BorderRadius.circular(Dimensions.radius5 * 2)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: AppThemes.iconColor1,
                      ),
                      TextWidget(
                        text: AppConstats.SEARCH_HINT_TEXT,
                        textStyle: AppThemes.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(Dimensions.height10 * 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: AppConstats.UPCOMING_FLIGHTS_TEXT,
                      textStyle: AppThemes.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {},
                      child: TextWidget(
                        text: AppConstats.VIEW_ALL_TEXT,
                        //we are using the previously declared style but changing it a bit inline
                        textStyle: AppThemes.headLineStyle4.copyWith(color: AppThemes.mainAppColor),
                      ),
                    )
                  ],
                ),
                Gap(Dimensions.height15),
                TicketView()
              ],
            )),
      ]),
    );
  }
}
