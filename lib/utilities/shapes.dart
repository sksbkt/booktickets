import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class RPSCustomPainter extends CustomPainter {
  final Color color;
  RPSCustomPainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000000, 0);
    path_0.cubicTo(size.width * 0.7761341, 0, size.width, size.height * 0.2238659, size.width, size.height * 0.5000000);
    path_0.cubicTo(
        size.width, size.height * 0.7761341, size.width * 0.7761341, size.height, size.width * 0.5000000, size.height);
    path_0.cubicTo(size.width * 0.2238659, size.height, 0, size.height * 0.7761341, 0, size.height * 0.5000000);
    path_0.cubicTo(0, size.height * 0.2238659, size.width * 0.2238659, 0, size.width * 0.5000000, 0);
    path_0.close();

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5000000, size.height * 0.2366864);
    path_1.cubicTo(size.width * 0.3548083, size.height * 0.2366864, size.width * 0.2366864, size.height * 0.3548083,
        size.width * 0.2366864, size.height * 0.5000000);
    path_1.cubicTo(size.width * 0.2366864, size.height * 0.6451917, size.width * 0.3548083, size.height * 0.7633136,
        size.width * 0.5000000, size.height * 0.7633136);
    path_1.cubicTo(size.width * 0.6451917, size.height * 0.7633136, size.width * 0.7633136, size.height * 0.6451917,
        size.width * 0.7633136, size.height * 0.5000000);
    path_1.cubicTo(size.width * 0.7633136, size.height * 0.3548083, size.width * 0.6451917, size.height * 0.2366864,
        size.width * 0.5000000, size.height * 0.2366864);
    path_1.moveTo(size.width * 0.5000000, 0);
    path_1.cubicTo(size.width * 0.7761424, 0, size.width, size.height * 0.2238576, size.width, size.height * 0.5000000);
    path_1.cubicTo(
        size.width, size.height * 0.7761424, size.width * 0.7761424, size.height, size.width * 0.5000000, size.height);
    path_1.cubicTo(size.width * 0.2238576, size.height, 0, size.height * 0.7761424, 0, size.height * 0.5000000);
    path_1.cubicTo(0, size.height * 0.2238576, size.width * 0.2238576, 0, size.width * 0.5000000, 0);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = color;
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class TicketViewBorderPainter extends CustomPainter {
  final Color color;
  TicketViewBorderPainter({this.color = Colors.black});
  @override
  void paint(Canvas canvas, Size size) {
    var path = parseSvgPathData(
        'M359,81.4a10.5,10.5,0,0,0,10.5,10.5v47.6a21.06,21.06,0,0,1-21,21H21.5a21.06,21.06,0,0,1-21-21V91.9a10.5,10.5,0,0,0,0-21V21.5a21.06,21.06,0,0,1,21-21h327a21.06,21.06,0,0,1,21,21V70.9A10.5,10.5,0,0,0,359,81.4Z');
    canvas.drawPath(
      path,
      Paint()
        ..color = color
        ..style = PaintingStyle.fill,
    );
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
