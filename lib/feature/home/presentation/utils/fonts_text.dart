import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portofolio/feature/home/presentation/resources/commons/font_names.dart';

TextStyle textFonts({
  String? fontFamily,
  Color? color,
  Color? backgroundColor,
  double? fontSize,
  double? height,
  double? wordSpacing,
  double? letterSpacing,
  FontWeight? fontWeight,
  TextOverflow? overflow,
  Paint? background,
  TextDecoration? decoration,
  List<Shadow>? shadows,
  TextBaseline? textBaseline,
}) {
  return GoogleFonts.getFont(fontFamily ?? FontNames.openSans).copyWith(
    background: background,
    decoration: decoration,
    shadows: shadows,
    textBaseline: textBaseline,
    color: color,
    fontSize: fontSize,
    backgroundColor: backgroundColor,
    height: height,
    fontWeight: fontWeight,
    overflow: overflow,
    wordSpacing: wordSpacing,
    letterSpacing: letterSpacing,
  );
}
