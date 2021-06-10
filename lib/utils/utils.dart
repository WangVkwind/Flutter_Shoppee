import 'package:flutter/material.dart';

class ScreenUtil {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? rpx;
  static double? px;

  static void initialize(BuildContext context, {double standardWidth = 750}) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    rpx = screenWidth !/ standardWidth;
    px = screenWidth !/ standardWidth * 2;
  }

  static double setPx(double size) {
    return ScreenUtil.px !* size * 2;
  }

  static double setRpx(double size) {
    return ScreenUtil.rpx !* size * 2;
  }
}

extension InFit on int {
  double get px {
    return ScreenUtil.setPx(this.toDouble());
  }

  double get rpx {
    return ScreenUtil.setRpx(this.toDouble());
  }
}

extension DoubleFit on double {
  double get px {
    return ScreenUtil.setPx(this);
  }

  double get rpx {
    return ScreenUtil.setRpx(this);
  }
}