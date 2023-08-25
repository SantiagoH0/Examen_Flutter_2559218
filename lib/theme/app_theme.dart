import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static const Color secondary = Colors.lightBlue;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Color(0xFF333333)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: const TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: secondary),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: primary),
        borderRadius: BorderRadius.circular(12),
      ),
      filled: true,
      fillColor: const  Color(0xFFF2F2F2),
    ),
  );
}