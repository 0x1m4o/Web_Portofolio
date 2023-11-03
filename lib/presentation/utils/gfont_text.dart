// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import './fonts_text.dart';

Widget GFontText(
    {int? maxLines,
    bool? softWrap,
    Color? selectionColor,
    String? semanticsLabel,
    TextHeightBehavior? textHeightBehavior,
    TextWidthBasis? textWidthBasis,
    double? textScaleFactor,
    StrutStyle? strutStyle,
    String? fontFamily,
    String? content,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    double? height,
    double? wordSpacing,
    double? letterSpacing,
    FontWeight? fontWeight,
    Locale? locale,
    TextOverflow? overflow,
    TextDirection? textDirection,
    TextAlign? textAlign}) {
  return Text(content ?? 'Text is Empty',
      textAlign: textAlign,
      overflow: overflow,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      selectionColor: selectionColor,
      semanticsLabel: semanticsLabel,
      textHeightBehavior: textHeightBehavior,
      textWidthBasis: textWidthBasis,
      textScaleFactor: textScaleFactor,
      strutStyle: strutStyle,
      maxLines: maxLines,
      style: textFonts(
        fontFamily: fontFamily,
        color: color,
        fontSize: fontSize,
        backgroundColor: backgroundColor,
        height: height,
        fontWeight: fontWeight,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
      ));
}
