import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Responsive {
  bool isMobile(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isMobile;
  }

  bool isDesktop(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isDesktop;
  }

  bool isTablet(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isTablet;
  }

  bool isPhone(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isPhone;
  }

  double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double width(BuildContext context, {double? value, int? valueDecrement}) {
    var fullWidth = MediaQuery.of(context).size.width;
    return fullWidth - (valueDecrement ?? 50);
  }

  double height(BuildContext context, {double? value, int? valueDecrement}) {
    var fullHeight = MediaQuery.of(context).size.height * (value ?? 1);
    return fullHeight - (valueDecrement ?? 50);
  }

  double fontSize(
      BuildContext context, double baseFontSize, double scaleFactor) {
    double screenWidth = MediaQuery.of(context).size.width;

    return min(baseFontSize, screenWidth * scaleFactor);
  }
}
