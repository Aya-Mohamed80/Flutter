 import 'package:flutter/material.dart';
import 'app_color.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: AppColors.dark),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: AppColors.white),
    ),
  );
}