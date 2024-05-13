import 'package:flutter/material.dart';

class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 0.2;

    // Calculate the distance between lines
    final double verticalDistance = size.width / 10;
    final double horizontalDistance = size.height / 10;

    // Draw vertical lines
    for (int i = 0; i < 11; i++) {
      final double dx = i * verticalDistance;
      canvas.drawLine(Offset(dx, 0), Offset(dx, size.height), paint);
    }

    // Draw horizontal lines
    for (int i = 0; i < 11; i++) {
      final double dy = i * horizontalDistance;
      canvas.drawLine(Offset(0, dy), Offset(size.width, dy), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}