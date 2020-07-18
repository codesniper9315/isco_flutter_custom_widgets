import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeAgoText extends StatelessWidget {
  final int milliSec;
  final Color fontColor;
  final double fontSize;
  final double padding;
  final double radius;
  final Color backgroundColor;

  TimeAgoText({
    this.milliSec,
    this.fontColor = Colors.black,
    this.fontSize = 12,
    this.padding = 0,
    this.radius = 0,
    this.backgroundColor = Colors.transparent,
  }) : assert(milliSec != null);

  @override
  Widget build(BuildContext context) {
    var today = DateTime.now().day;
    var chatday = DateTime.fromMillisecondsSinceEpoch(milliSec).day;
    var day = today == chatday
        ? 'Today '
        : DateFormat.EEEE()
            .format(DateTime.fromMillisecondsSinceEpoch(milliSec))
            .toString();
    final double diff =
        (DateTime.now().millisecondsSinceEpoch - milliSec) / (24 * 3600 * 1000);
    String title = '';
    if (diff < 1.0) {
      title = day +
          DateFormat.jm()
              .format(DateTime.fromMillisecondsSinceEpoch(milliSec))
              .toString();
    } else if (diff < 7.0) {
      title = DateFormat.EEEE()
          .add_jm()
          .format(DateTime.fromMillisecondsSinceEpoch(milliSec));
    } else {
      title = DateFormat.yMMMMd('en_US')
          .add_jm()
          .format(DateTime.fromMillisecondsSinceEpoch(milliSec));
    }
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: Text(
        title,
        style: TextStyle(color: fontColor, fontSize: fontSize),
      ),
    );
  }
}
