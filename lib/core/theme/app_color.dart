import 'package:flutter/material.dart';

class AppColor {
  static const neutral = MaterialColor(0xff4B5563, <int, Color>{
    50: Color(0xFFF9FAFB),
    100: Color(0xFFF3F4F6),
    200: Color(0xFFE5E7EB),
    300: Color(0xFFD1D5DB),
    400: Color(0xFF9CA3AF),
    500: Color(0xFF6B7280),
    600: Color(0xFF4B5563),
    700: Color(0xFF374151),
    800: Color(0xFF1F2937),
    900: Color(0xFF111827),
  });

  static const accent = MaterialColor(0xFFFFA41B, <int, Color>{
    50: Color(0xFFFFF6E8),
    100: Color(0xFFFFEDD1),
    200: Color(0xFFFFE4BB),
    300: Color(0xFFFFDBA4),
    400: Color(0xFFFFD18D),
    500: Color(0xFFFFC876),
    600: Color(0xFFFFBF5F),
    700: Color(0xFFFFB649),
    800: Color(0xFFFFAD32),
    900: Color(0xFFFFA41B),
  });

  static const black = MaterialColor(0xFF111827, <int, Color>{
    50: Color(0xFFF9FAFB),
    100: Color(0xFFF3F4F6),
    200: Color(0xFFE5E7EB),
    300: Color(0xFFD1D5DB),
    400: Color(0xFF9CA3AF),
    500: Color(0xFF6B7280),
    600: Color(0xFF4B5563),
    700: Color(0xFF374151),
    800: Color(0xFF1F2937),
    900: Color(0xFF111827),
  });

  static const MaterialColor primary = MaterialColor(0xff005BA4, <int, Color>{
    // create color with 500 = 0xff005BA4
    50: Color(0xFFF0F5FF),
    100: Color(0xFFD9E6FF),
    200: Color(0xFFB3CDFF),
    300: Color(0xFF8CB3FF),
    400: Color(0xFF6A9FFF),
    500: Color(0xFF005BA4), // main color
    600: Color(0xFF00508F),
    700: Color(0xFF00467A),
    800: Color(0xFF003B66),
    900: Color(0xFF002D4D),
  });

  static const MaterialColor primaryAccent =
      MaterialColor(0xFF6A2FA9, <int, Color>{
        100: Color(0xFFCDB3FF),
        200: Color(0xFF6A2FA9),
        400: Color(0xFF8A4DFF),
        700: Color(0xFF7A33FF),
      });

  static const MaterialColor secondary = MaterialColor(0xff9299B5, <int, Color>{
    50: Color(0xFFF5F6FA),
    100: Color(0xFFE1E3ED),
    200: Color(0xFFC2C5D9),
    300: Color(0xFFA3A8C5),
    400: Color(0xFF848BAF),
    500: Color(0xFF9299B5), // main color
    600: Color(0xFF7A7F9E),
    700: Color(0xFF62667F),
    800: Color(0xFF4A4D61),
    900: Color(0xFF32343F),
  });

  static const MaterialColor secondaryAccent =
      MaterialColor(0xFFF9AA68, <int, Color>{
        100: Color(0xFFFFFFFF),
        200: Color(0xFFF9AA68),
        400: Color(0xFFFFE6D9),
        700: Color(0xFFFFD6BF),
      });

  static const white = Color(0xFFFFFFFF);
  // static const primaryDark = Color(0xFF00317E);
  static const transparent = Colors.transparent;
}
