import 'package:flutter/material.dart';

class AppColors {
  static const background = Color(0xFF12211F);
  static const primary = Color(0xFF149E85);
  static const base = Color(0xFF264540);
  static const text = Color(0xFFFFFFFF);
}

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.background,
      fontFamily: 'Pretendard',
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        surface: AppColors.background,
        primary: AppColors.primary,
        secondary: AppColors.base,
        brightness: Brightness.dark,
      ),
      textTheme: Typography.whiteMountainView.apply(
        bodyColor: AppColors.text,
        displayColor: AppColors.text,
      ),
    );
  }
}

