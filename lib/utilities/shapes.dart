import 'package:flutter/cupertino.dart';

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
