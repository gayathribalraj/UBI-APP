import 'package:flutter/material.dart';

class ThemesColor {
  static const Color primaryBlue = Color(0xFF003366);
  static const Color primaryRed = Color(0xFFE60000);
  static const Color deepSkyBlue = Color(0xFF59BFFF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightGrey = Color(0xFFE5E5E5);
  static const Color textDarkBlue = Color(0xFF1c1c1c);
}

final ThemeData apptheme = ThemeData(
  primaryColor: ThemesColor.primaryBlue,
  scaffoldBackgroundColor: ThemesColor.white,
  fontFamily: 'Roboto',
  textTheme: TextTheme(bodyLarge: TextStyle(color: ThemesColor.textDarkBlue)),
);
