import 'package:flutter/material.dart';

class RoundText extends StatelessWidget {
  /// shape radius of round text
  final double radius;

  /// background color
  final Color color;

  /// border color
  final Color borderColor;

  /// width of border
  final double borderWidth;

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
    @required this.borderColor,
    @required this.borderWidth,
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
        border: Border.all(color: borderColor, width: borderWidth),
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
