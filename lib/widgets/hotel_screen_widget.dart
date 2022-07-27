import 'package:booktickets/theme/app_themes.dart';
import 'package:booktickets/utilities/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  HotelScreen({required this.hotel, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        width: Dimensions.screenWidth * .5,
        height: 350,
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 15),
        decoration: BoxDecoration(
            color: AppThemes.mainAppColor,
            borderRadius: BorderRadius.circular(Dimensions.radius12 * 2),
            boxShadow: [BoxShadow(offset: Offset(0, 2), color: AppThemes.shadowColor, blurRadius: 5, spreadRadius: 2)]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius12),
                  color: AppThemes.mainAppColor,
                  image: DecorationImage(image: AssetImage('assets/images/${hotel['image']}'), fit: BoxFit.cover)),
            ),
            Gap(Dimensions.height10),
            Text(
              hotel['place'],
              textAlign: TextAlign.start,
              style: AppThemes.headLineStyle2.copyWith(color: AppThemes.kakiColor),
            ),
            Gap(Dimensions.height5),
            Text(
              hotel['destination'],
              textAlign: TextAlign.start,
              style: AppThemes.headLineStyle3.copyWith(color: Colors.white),
            ),
            Gap(Dimensions.height5),
            Text(
              '\$${hotel['price']} /night',
              textAlign: TextAlign.start,
              style: AppThemes.headLineStyle1.copyWith(color: AppThemes.kakiColor, fontSize: 23),
            ),
          ],
        ),
      ),
    );
  }
}
