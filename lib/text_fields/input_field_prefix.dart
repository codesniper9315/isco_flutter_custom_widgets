import 'package:flutter/material.dart';

class InputFieldPrefix extends StatelessWidget {
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

  /// prefix icon data
  final IconData prefixIcon;

  /// prefix icon color
  final Color prefixIconColor;

  /// prefix icon size
  final double prefixIconSize;

  /// read-only
  final bool readOnly;

  /// ontap function on input
  final Function onTap;

  /// the trigger event on complete the editing
  final Function onEditingComplete;

  /// the tirgger event on submitted the field value
  final Function onFieldSubmitted;

  /// text input action
  final TextInputAction textInputAction;

  /// keyboard type of input field
  final TextInputType keyboardType;

  /// Focus Node
  final FocusNode focusNode;

  /// space
  final double space;

  /// obsecure text for password
  final bool obsecureText;

  /// validator function
  final Function validator;

  /// maxLines
  final int maxLines;

  InputFieldPrefix({
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
    @required this.prefixIcon,
    @required this.prefixIconSize,
    @required this.prefixIconColor,
    this.readOnly = false,
    this.onTap,
    this.space = 0,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.textInputAction = TextInputAction.done,
    this.keyboardType = TextInputType.text,
    this.focusNode,
    this.obsecureText = false,
    this.validator,
    this.maxLines,
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
            onEditingComplete: onEditingComplete,
            onFieldSubmitted: onFieldSubmitted,
            textInputAction: textInputAction,
            keyboardType: keyboardType,
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
              prefixIcon: Icon(
                prefixIcon,
                color: prefixIconColor,
                size: prefixIconSize,
              ),
            ),
            readOnly: readOnly,
            autovalidate: true,
            validator: validator,
            maxLines: maxLines,
          ),
        ],
      ),
    );
  }
}
