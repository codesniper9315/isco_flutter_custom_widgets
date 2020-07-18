import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkTextSpan extends TextSpan {
  LinkTextSpan({
    String title,
    String linkUrl,
    TextStyle titleStyle,
  }) : super(
          style: titleStyle,
          text: title ?? linkUrl,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              launch(linkUrl, forceSafariVC: false);
            },
        );
}
