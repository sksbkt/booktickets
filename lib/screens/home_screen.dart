import 'package:booktickets/theme/app_themes.dart';
import 'package:booktickets/utilities/app_constants.dart';
import 'package:booktickets/utilities/data/app_info_list.dart';
import 'package:booktickets/utilities/dimensions.dart';
import 'package:booktickets/widgets/head_link_widget.dart';
import 'package:booktickets/widgets/hotel_screen_widget.dart';

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
      body: ListView(physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()), children: [
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
                        Text(
                          AppConstats.GREETING_TEXT,
                          style: AppThemes.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          AppConstats.BOOK_TICKETS_TEXT,
                          style: AppThemes.headLineStyle1,
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
                      Text(
                        AppConstats.SEARCH_HINT_TEXT,
                        style: AppThemes.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(Dimensions.height10 * 3),
                HeadLinkWidget(text: AppConstats.UPCOMING_FLIGHTS_TEXT),
                Gap(Dimensions.height15),
              ],
            )),
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: ticketList
                .map((ticket) => TicketView(
                      ticket: ticket,
                    ))
                .toList(),
          ),
        ),
        Gap(Dimensions.height15),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.width15),
          child: HeadLinkWidget(
            text: AppConstats.HOTELS_TEXT,
          ),
        ),
        Gap(5),
        SingleChildScrollView(
            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList(),
            )),
      ]),
    );
  }
}
