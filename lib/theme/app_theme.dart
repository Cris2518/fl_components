

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
        ),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                foregroundColor: Colors.white,
                elevation: 5,
          ),
        ),
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