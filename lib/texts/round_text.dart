import 'package:flutter/material.dart';

class RoundText extends StatelessWidget {
  /// shape radius of round button
  final double radius;

  /// button color
  final Color color;

  /// icon data of icon button
  final String text;

  /// text size
  final double textSize;

  /// text color
  final Color textColor;

  /// width
  final double width;

  /// height
  final double height;

  RoundText({
    @required this.radius,
    @required this.color,
    @required this.text,
    @required this.textSize,
    @required this.textColor,
    @required this.width,
    @required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: textSize),
        ),
      ),
    );
  }
}
