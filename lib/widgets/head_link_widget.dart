import 'package:flutter/material.dart';

import '../theme/app_themes.dart';
import '../utilities/app_constants.dart';

class HeadLinkWidget extends StatelessWidget {
  final String text;
  final String? linkText;
  final String? link;
  const HeadLinkWidget({
    required this.text,
    this.linkText = AppConstats.VIEW_ALL_TEXT,
    this.link = '404',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppThemes.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            ///navigation is yet to be implemented
            ///link
            print('${link}');
          },
          child: Text(
            linkText!,
            //we are using the previously declared style but changing it a bit inline
            style: AppThemes.headLineStyle4.copyWith(color: AppThemes.mainAppColor),
          ),
        )
      ],
    );
  }
}
