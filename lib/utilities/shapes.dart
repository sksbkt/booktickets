import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dimensions.dart';

Path ticketFormPath(double circleHeight, double height, double width) {
  final Path path = Path();
  double circleSize = Dimensions.radius5 * 5;

  path.moveTo(0, circleSize);
  path.lineTo(0.0, circleHeight == 0 ? height / 2 - circleSize / 2 : circleHeight - circleSize / 2);
  path.relativeArcToPoint(Offset(0, circleSize), radius: Radius.circular(Dimensions.radius5 * 2));
  path.lineTo(0.0, height - circleSize);
  path.relativeQuadraticBezierTo(0, circleSize, circleSize, circleSize);
  path.lineTo(width - circleSize, height);
  path.relativeQuadraticBezierTo(circleSize, 0, circleSize, -circleSize);

  path.lineTo(width, circleHeight == 0 ? height / 2 + circleSize / 2 : circleHeight + circleSize / 2);
  path.relativeArcToPoint(Offset(0, -circleSize), radius: Radius.circular(10));
  // path.arcToPoint(Offset(width, height / 2 - circleSize / 2), radius: Radius.circular(10));
  path.lineTo(width, circleSize);
  path.relativeQuadraticBezierTo(0, -circleSize, -circleSize, -circleSize);
  path.lineTo(circleSize, 0);
  path.relativeQuadraticBezierTo(-circleSize, 0, -circleSize, circleSize);
  return path;
}

class CircularClips extends CustomClipper<Path> {
  double height;
  double width;
  final double circleHeight;
  CircularClips({this.circleHeight = 0, this.height = 0, this.width = 0});
  @override
  Path getClip(Size size) {
    if (height == 0) height = size.height;
    if (width == 0) width = size.width;

    // final Path path = Path();
    // double circleSize = Dimensions.radius5 * 5;
    //
    // path.lineTo(0.0, size.height / 2 - circleSize / 2);
    // path.relativeArcToPoint(Offset(0, circleSize), radius: Radius.circular(Dimensions.radius5 * 2));
    // path.lineTo(0.0, size.height);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, size.height / 2 + circleSize / 2);
    // path.arcToPoint(Offset(size.width, size.height / 2 - circleSize / 2), radius: Radius.circular(10));
    // path.lineTo(size.width, 0);
    // ///We are resizing our path boundaries with the size
    // var path = parseSvgPathData(
    //     'M359,81.4a10.5,10.5,0,0,0,10.5,10.5v47.6a21.06,21.06,0,0,1-21,21H21.5a21.06,21.06,0,0,1-21-21V91.9a10.5,10.5,0,0,0,0-21V21.5a21.06,21.06,0,0,1,21-21h327a21.06,21.06,0,0,1,21,21V70.9A10.5,10.5,0,0,0,359,81.4Z');
    // Rect pathBounds = path.getBounds();
    // Matrix4 matrix4 = Matrix4.identity();
    // matrix4.scale(size.width / pathBounds.width, size.height / pathBounds.height);

    return ticketFormPath(circleHeight, height, width);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class LargeCircularClips extends CustomClipper<Path> {
  double height;
  double width;
  final double circleHeight;
  LargeCircularClips({this.circleHeight = 0, this.height = 0, this.width = 0});
  @override
  Path getClip(Size size) {
    if (height == 0) height = size.height;
    if (width == 0) width = size.width;
    print('width: ' + width.toString());
    // final Path path = Path();
    // double circleSize = Dimensions.radius5 * 5;
    //
    // path.lineTo(0.0, size.height / 2 - circleSize / 2);
    // path.relativeArcToPoint(Offset(0, circleSize), radius: Radius.circular(Dimensions.radius5 * 2));
    // path.lineTo(0.0, size.height);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, size.height / 2 + circleSize / 2);
    // path.arcToPoint(Offset(size.width, size.height / 2 - circleSize / 2), radius: Radius.circular(10));
    // path.lineTo(size.width, 0);
    // ///We are resizing our path boundaries with the size
    // var path = parseSvgPathData(
    //     'M359,81.4a10.5,10.5,0,0,0,10.5,10.5v47.6a21.06,21.06,0,0,1-21,21H21.5a21.06,21.06,0,0,1-21-21V91.9a10.5,10.5,0,0,0,0-21V21.5a21.06,21.06,0,0,1,21-21h327a21.06,21.06,0,0,1,21,21V70.9A10.5,10.5,0,0,0,359,81.4Z');
    // Rect pathBounds = path.getBounds();
    // Matrix4 matrix4 = Matrix4.identity();
    // matrix4.scale(size.width / pathBounds.width, size.height / pathBounds.height);

    return ticketFormPath(circleHeight, height, width);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

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
  final double strokeWidth;
  double height;
  double width;
  final double circleHeight;
  TicketViewBorderPainter(
      {this.circleHeight = 0, this.height = 0, this.width = 0, this.strokeWidth = 1, this.color = Colors.black});
  @override
  void paint(Canvas canvas, Size size) {
    if (height == 0) height = size.height;
    if (width == 0) width = size.width;

    // ///We are resizing our path boundaries with the size
    // var path = parseSvgPathData(
    //     'M359,81.4a10.5,10.5,0,0,0,10.5,10.5v47.6a21.06,21.06,0,0,1-21,21H21.5a21.06,21.06,0,0,1-21-21V91.9a10.5,10.5,0,0,0,0-21V21.5a21.06,21.06,0,0,1,21-21h327a21.06,21.06,0,0,1,21,21V70.9A10.5,10.5,0,0,0,359,81.4Z');
    // Rect pathBounds = path.getBounds();
    // Matrix4 matrix4 = Matrix4.identity();
    // matrix4.scale(size.width / pathBounds.width, size.height / pathBounds.height);
    canvas.drawPath(
      ticketFormPath(circleHeight, height, width),
      Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth,
    );
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class LargeTicketViewBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  double height;
  double width;
  final double circleHeight;

  LargeTicketViewBorderPainter(
      {this.circleHeight = 0, this.height = 0, this.width = 0, this.strokeWidth = 1, this.color = Colors.black});
  @override
  void paint(Canvas canvas, Size size) {
    if (height == 0) height = size.height;
    if (width == 0) width = size.width;
    print('width: ' + width.toString());

    ///We are resizing our path boundaries with the size
    // var path = parseSvgPathData(
    //     'M359,81.4a10.5,10.5,0,0,0,10.5,10.5v47.6a21.06,21.06,0,0,1-21,21H21.5a21.06,21.06,0,0,1-21-21V91.9a10.5,10.5,0,0,0,0-21V21.5a21.06,21.06,0,0,1,21-21h327a21.06,21.06,0,0,1,21,21V70.9A10.5,10.5,0,0,0,359,81.4Z');
    // Rect pathBounds = path.getBounds();
    // Matrix4 matrix4 = Matrix4.identity();
    // matrix4.scale(size.width / pathBounds.width, size.height / pathBounds.height);
    canvas.drawPath(
        ticketFormPath(circleHeight, height, width),
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
