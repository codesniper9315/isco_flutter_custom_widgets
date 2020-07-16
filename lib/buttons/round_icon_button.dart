import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  /// shape radius of round button
  final double radius;

  /// button color
  final Color color;

  /// icon data of icon button
  final IconData iconData;

  /// icon size
  final double iconSize;

  /// icon color
  final Color iconColor;

  /// button width
  final double width;

  /// button height
  final double height;

  /// on tap function
  final Function onTap;

  /// shadow
  final bool isShadow;

  RoundIconButton({
    @required this.radius,
    @required this.color,
    @required this.iconData,
    @required this.iconSize,
    @required this.iconColor,
    @required this.width,
    @required this.height,
    this.onTap,
    this.isShadow = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          color: color,
          boxShadow: isShadow
              ? [
                  BoxShadow(
                    spreadRadius: 0,
                    blurRadius: 2,
                    color: Colors.black.withOpacity(0.13),
                    offset: Offset(0, 0.3),
                  ),
                ]
              : [],
        ),
        child: Center(
          child: Icon(iconData, color: iconColor, size: iconSize),
        ),
      ),
    );
  }
}
