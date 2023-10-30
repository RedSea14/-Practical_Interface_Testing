import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    this.opacity = 0,
    this.padding = 0,
  });
  final double width;
  final double height;
  final Color color;
  final double? opacity;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        padding: EdgeInsetsDirectional.all(padding!),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color.withOpacity(opacity!),
        ),
      ),
    );
  }
}
