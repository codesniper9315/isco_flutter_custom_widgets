import 'package:flutter/material.dart';

class TextIconButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final double titleSize;
  final double iconSize;
  final Color titleColor;
  final Color iconColor;
  final Color buttonColor;
  final Color borderColor;
  final Function onPressed;
  final double radius;
  final double itemSpace;
  final bool isLeading;
  final bool isCenter;
  final double hPadding;
  final double vPadding;
  final double elevation;

  TextIconButton({
    @required this.title,
    @required this.iconData,
    @required this.titleSize,
    @required this.iconSize,
    @required this.titleColor,
    @required this.iconColor,
    @required this.buttonColor,
    @required this.borderColor,
    @required this.onPressed,
    @required this.itemSpace,
    this.elevation = 0,
    this.radius = 10,
    this.isLeading = true,
    this.isCenter = true,
    this.hPadding = 0,
    this.vPadding = 0,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: buttonColor,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
        child: Row(
          mainAxisAlignment:
              isCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: <Widget>[
            isLeading
                ? Icon(iconData, size: iconSize, color: iconColor)
                : Text(
                    title,
                    style: TextStyle(
                      color: titleColor,
                      fontSize: titleSize,
                    ),
                  ),
            SizedBox(width: itemSpace),
            isLeading
                ? Text(
                    title,
                    style: TextStyle(color: titleColor, fontSize: titleSize),
                  )
                : Icon(iconData, size: iconSize, color: iconColor)
          ],
        ),
      ),
    );
  }
}
