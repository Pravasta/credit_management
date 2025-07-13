import 'package:flutter/material.dart';
import 'package:flutter_credit_management/core/theme/app_color.dart';

class AppTextStyle {
  static const String defaultFontFamily = 'Poppins';
  // Light Text Theme
  static final TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 57.0,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 45.0,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
    labelLarge: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 10.0,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 9.0,
      fontWeight: FontWeight.normal,
    ),
    labelSmall: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.black[900]!,
      fontSize: 8.0,
      fontWeight: FontWeight.normal,
    ),
  );
  // Dark Text Theme
  static final TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 57.0,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 45.0,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    labelLarge: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 10.0,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 9.0,
      fontWeight: FontWeight.normal,
    ),
    labelSmall: TextStyle(
      fontFamily: defaultFontFamily,
      color: AppColor.white,
      fontSize: 8.0,
      fontWeight: FontWeight.normal,
    ),
  );
}
