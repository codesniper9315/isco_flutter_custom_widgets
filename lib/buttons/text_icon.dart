import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Color titleColor;
  final Color iconColor;
  final double titleSize;
  final double iconSize;
  final double width;
  final MainAxisAlignment alignment;
  final bool isLeading;
  final double space;
  final double elevation;

  TextIcon({
    @required this.title,
    @required this.iconData,
    @required this.titleColor,
    @required this.iconColor,
    @required this.titleSize,
    @required this.iconSize,
    @required this.width,
    @required this.alignment,
    this.elevation = 0,
    this.isLeading = true,
    this.space = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Row(
        mainAxisAlignment: alignment,
        children: <Widget>[
          isLeading
              ? Icon(iconData, size: iconSize, color: iconColor)
              : Text(
                  title,
                  style: TextStyle(color: titleColor, fontSize: titleSize),
                ),
          SizedBox(width: space),
          isLeading
              ? Text(
                  title,
                  style: TextStyle(color: titleColor, fontSize: titleSize),
                )
              : Icon(iconData, size: iconSize, color: iconColor)
        ],
      ),
    );
  }
}
