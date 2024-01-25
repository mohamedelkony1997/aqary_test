// Create a custom painter class

import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0;

    canvas.drawLine(Offset(0, 0), Offset(size.width, size.height), paint);
    // Add more custom drawing logic as needed
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// Use the custom painter in a widget

class CustomPaintWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyCustomPainter(),
      child: Container(
        // Other child widgets
      ),
    );
  }
}
