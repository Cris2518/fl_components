

import 'package:flutter/material.dart';

class AppTheme {
  
  static const Color primary = Colors.blue;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        primaryColor: primary,
        appBarTheme: AppBarTheme(
          color: primary,
          elevation: 0
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary),
        )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: AppBarTheme(
        color: primary,
        elevation: 0
      ),
    scaffoldBackgroundColor: Colors.black
  );

}