import 'package:flutter/material.dart';

class CustomCircleWidget extends StatelessWidget {
  final String text;
  final double size;
  final Gradient innerGradient;
  final Color outerColor;
  final double gap;

  const CustomCircleWidget({
    Key? key,
    required this.text,
    this.size = 60.0,
    required this.innerGradient,
    this.outerColor = Colors.blue,
    this.gap = 4.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: outerColor, width: 2.0),
      ),
      child: Center(
        child: Container(
          width: size - gap * 2,
          height: size - gap * 2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: innerGradient,
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

