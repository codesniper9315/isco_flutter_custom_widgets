import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  final String title;
  final double titleSize;
  final Color titleColor;
  final Color buttonColor;
  final Color borderColor;
  final Function onPressed;
  final double radius;
  final double elevation;
  final double borderWidth;

  TextButton({
    @required this.title,
    @required this.titleSize,
    @required this.titleColor,
    @required this.buttonColor,
    @required this.borderColor,
    @required this.onPressed,
    this.elevation = 0,
    this.radius = 10,
    this.borderWidth = 1,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor, width: borderWidth),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      elevation: elevation,
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: titleSize,
        ),
      ),
    );
  }
}
