import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilities/shapes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(color: Colors.red, width: 346, height: 500, child: CustomPaint(painter: TicketViewBorderPainter())),
    );
  }
}
