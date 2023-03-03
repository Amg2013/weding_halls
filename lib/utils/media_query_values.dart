// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

extension MediaQueryValues on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get padding => MediaQuery.of(this).viewPadding.top;
  double get bottom => MediaQuery.of(this).viewInsets.bottom;
  double get margine => MediaQuery.of(this).viewInsets.top;
}
//0

// You could create a initialization function in the class to set the media query as in the example below

class AppSizes {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static Orientation? orientation;
  // size
  static double? a5_OfSize;
  static double? a5_OfHeight;
  static double? a10_OfHeight;
  static double? a20_OfHeight;
  static double? a50_OfHeight;
  static double? a80_OfHeight;

  static double? a5_OfWidth;
  static double? a10_OfWidth;
  static double? a20_OfWidth;
  static double? a50_OfWidth;
  static double? a80_OfWidth;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
    //for height
    a5_OfHeight = _mediaQueryData!.size.height * 0.05;
    a10_OfHeight = _mediaQueryData!.size.height * 0.10;
    a20_OfHeight = _mediaQueryData!.size.height * 0.20;
    a50_OfHeight = _mediaQueryData!.size.height * 0.50;
    a80_OfHeight = _mediaQueryData!.size.height * 0.80;
    // for width
    a5_OfWidth = _mediaQueryData!.size.width * 0.05;
    a10_OfWidth = _mediaQueryData!.size.width * 0.10;
    a20_OfWidth = _mediaQueryData!.size.width * 0.20;
    a50_OfWidth = _mediaQueryData!.size.width * 0.50;
    a80_OfWidth = _mediaQueryData!.size.width * 0.80;
  }
}
// And call it from your first page like the splash screen page inside the build widget as
//SizeConfig().init(context);

// Then call it anywhere as
// SizeConfig.screenWidth;
