import 'package:flutter/material.dart';
import 'package:isco_custom_widgets/buttons/index.dart';

class BlankPage extends StatelessWidget {
  final Widget header;
  final String title;
  final Color titleColor;
  final double titleSize;
  final FontWeight titleWeight;
  final String subtitle;
  final Color subtitleColor;
  final double subtitleSize;
  final FontWeight subtitleWeight;
  final bool isBack;
  final bool isRetry;
  final Function backFunc;
  final String backTitle;
  final Color backTitleColor;
  final double backTitleSize;
  final Color backButtonColor;
  final Function retryFunc;
  final String retryTitle;
  final Color retryTitleColor;
  final double retryTitleSize;
  final Color retryButtonColor;
  final double buttonRadius;

  BlankPage({
    this.header,
    this.title = 'Please title here',
    this.titleColor = Colors.black87,
    this.titleSize = 14,
    this.titleWeight = FontWeight.w600,
    this.subtitle = 'Please subtitle here',
    this.subtitleColor = Colors.black,
    this.subtitleSize = 12,
    this.subtitleWeight = FontWeight.w500,
    this.isBack = true,
    this.isRetry = true,
    this.backFunc,
    this.backTitle = 'Go back',
    this.backTitleColor = Colors.black,
    this.backTitleSize = 14,
    this.backButtonColor = Colors.grey,
    this.retryFunc,
    this.retryTitle = 'Try again',
    this.retryTitleColor = Colors.black,
    this.retryTitleSize = 14,
    this.retryButtonColor = Colors.white,
    this.buttonRadius = 2,
  }) : assert(header != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Flexible(flex: 4, child: Center(child: header)),
          Flexible(
            flex: 1,
            child: Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontSize: titleSize,
                fontWeight: titleWeight,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Text(
              subtitle,
              style: TextStyle(
                color: subtitleColor,
                fontSize: subtitleSize,
                fontWeight: subtitleWeight,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                isRetry
                    ? TextButton(
                        title: retryTitle,
                        titleSize: retryTitleSize,
                        titleColor: retryTitleColor,
                        buttonColor: retryButtonColor,
                        borderColor: retryButtonColor,
                        radius: buttonRadius,
                        onPressed: retryFunc,
                      )
                    : SizedBox.shrink(),
                isBack
                    ? TextButton(
                        title: backTitle,
                        titleSize: backTitleSize,
                        titleColor: backTitleColor,
                        buttonColor: backButtonColor,
                        borderColor: backButtonColor,
                        radius: buttonRadius,
                        onPressed: backFunc,
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
