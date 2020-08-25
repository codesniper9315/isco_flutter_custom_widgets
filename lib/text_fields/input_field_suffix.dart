import 'package:flutter/material.dart';

class InputFieldSuffix extends StatelessWidget {
  /// textediting controller
  final TextEditingController controller;

  /// input max width
  final double width;

  /// border color
  final Color borderColor;

  /// border radius
  final double radius;

  /// font size of input
  final double fontSize;

  /// font color of input
  final Color fontColor;

  /// hint text string
  final String hint;

  /// hint text color
  final Color hintColor;

  /// hint text size
  final double hintSize;

  /// label text string
  final String label;

  /// label text color
  final Color labelColor;

  /// label text size
  final double labelSize;

  /// suffix icon data
  final IconData suffixIcon;

  /// suffix icon color
  final Color suffixIconColor;

  /// suffix icon size
  final double suffixIconSize;

  /// read-only
  final bool readOnly;

  /// ontap function on input
  final Function onTap;

  /// space
  final double space;

  /// fill color
  final Color fillColor;

  InputFieldSuffix({
    @required this.width,
    @required this.controller,
    @required this.borderColor,
    @required this.radius,
    @required this.fontSize,
    @required this.fontColor,
    @required this.hint,
    @required this.hintColor,
    @required this.hintSize,
    @required this.label,
    @required this.labelColor,
    @required this.labelSize,
    @required this.suffixIcon,
    @required this.suffixIconSize,
    @required this.suffixIconColor,
    this.readOnly = false,
    this.onTap,
    this.space = 0,
    this.fillColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(color: labelColor, fontSize: labelSize),
          ),
          SizedBox(height: space),
          TextFormField(
            controller: controller,
            style: TextStyle(color: fontColor, fontSize: fontSize),
            onTap: onTap,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                borderSide: BorderSide(
                  color: borderColor,
                  width: 0.3,
                  style: BorderStyle.solid,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                borderSide: BorderSide(
                  color: borderColor,
                  width: 0.3,
                  style: BorderStyle.solid,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                borderSide: BorderSide(
                  color: Color(0xFF82B1FF),
                  width: 0.3,
                  style: BorderStyle.solid,
                ),
              ),
              hintText: hint,
              hintStyle: TextStyle(color: hintColor, fontSize: hintSize),
              suffixIcon: Icon(
                suffixIcon,
                color: suffixIconColor,
                size: suffixIconSize,
              ),
              fillColor: fillColor,
              filled: true,
            ),
            readOnly: readOnly,
          ),
        ],
      ),
    );
  }
}
