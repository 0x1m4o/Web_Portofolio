import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Widget autoSizeText(
    {Color? color,
    int? maxLines,
    bool? isAutoSize,
    String? content,
    String? fontFamily,
    double? height,
    double? fontSize,
    double? maxFontSize,
    double? minFontSize,
    FontWeight? fontWeight,
    TextOverflow? overflow}) {
  return AutoSizeText(
    content!,
    maxFontSize: maxFontSize ?? double.infinity,
    minFontSize: minFontSize ?? 12,
    maxLines: maxLines,
    overflow: overflow,
    style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        height: height,
        fontWeight: fontWeight),
  );
}
