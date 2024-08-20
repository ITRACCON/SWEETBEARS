import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(0, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1428571, 0);
    path_0.lineTo(0, size.height * 0.1000000);
    path_0.lineTo(0, size.height * 0.9000000);
    path_0.lineTo(size.width * 0.1428571, size.height);
    path_0.lineTo(size.width * 0.8571429, size.height);
    path_0.lineTo(size.width, size.height * 0.9000000);
    path_0.lineTo(size.width, size.height * 0.1000000);
    path_0.lineTo(size.width * 0.8571429, 0);
    path_0.lineTo(size.width * 0.1428571, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 0, 229)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.bevel;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
