import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageStyle {
  /// device pixel ratio
  double devicePixelRatio;

  /// device logical width - dp
  double deviceWidth;

  /// device logical height - dp
  double deviceHeight;

  /// statusbar height
  double statusBarHeight;

  /// bottombar height
  double bottomBarHeight;

  /// appbar height
  double appBarHeight;

  /// safearea height of device
  double safeAreaHeight;

  /// unit width
  double unitWidth;

  /// unit height
  double unitHeight;

  PageStyle(BuildContext context, double designWidth, double designHeight) {
    ScreenUtil.init(
      context,
      width: designWidth,
      height: designHeight,
      allowFontScaling: false,
    );
  }

  void initializePageStyles() {
    devicePixelRatio = ScreenUtil.pixelRatio;
    deviceWidth = ScreenUtil.screenWidth;
    deviceHeight = ScreenUtil.screenHeight;
    statusBarHeight = ScreenUtil.statusBarHeight;
    bottomBarHeight = ScreenUtil.bottomBarHeight;
    appBarHeight = AppBar().preferredSize.height;
    safeAreaHeight =
        deviceHeight - statusBarHeight - appBarHeight - bottomBarHeight;
    unitWidth = ScreenUtil().setWidth(1);
    unitHeight = ScreenUtil().setHeight(1);
  }
}
