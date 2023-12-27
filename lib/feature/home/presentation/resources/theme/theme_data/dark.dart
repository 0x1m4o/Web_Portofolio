import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkScheme,
  brightness: Brightness.dark,
);

ColorScheme darkScheme = const ColorScheme(
  brightness: Brightness.dark,
  onPrimary: Color(0xFF4B495C),
  primary: Color(0xFF4B495C),
  secondary: Color(0xFF696877),
  onSecondary: Color(0xFF696877),
  onError: Color(0xFFEC071A),
  error: Color(0xFFEC071A),
  background: Color(0xFF1B1631),
  onBackground: Color(0xFF1B1631),
  surface: Color(0xfffdfcff),
  onSurface: Color(0xff1a1c1e),
);
