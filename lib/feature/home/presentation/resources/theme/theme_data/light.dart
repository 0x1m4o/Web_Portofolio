import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightScheme,
  brightness: Brightness.light,
);
ColorScheme lightScheme = const ColorScheme(
    brightness: Brightness.light,
    onPrimary: Color(0xFFF4F5F4),
    primary: Color(0x00000000),
    secondary: Color(0xFFF4F5F4),
    onSecondary: Color(0xFFE3E6E3),
    onError: Color(0xFFEC071A),
    error: Color(0xFFEC071A),
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFFFFFFFF),
    surface: Color(0xfffdfcff),
    onSurface: Color(0xFFD0CFCF));
