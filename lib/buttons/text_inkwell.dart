import 'package:flutter/material.dart';

class TextInkWell extends StatelessWidget {
  final String title;
  final double titleSize;
  final Color titleColor;
  final Function onTap;

  TextInkWell({
    @required this.title,
    @required this.titleSize,
    @required this.titleColor,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(color: titleColor, fontSize: titleSize),
      ),
    );
  }
}
