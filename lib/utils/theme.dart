import 'package:flutter/material.dart';
import 'package:new_flutter_sckeleton/utils/text_style.dart';

ThemeData get appTheme => ThemeData(
  brightness: Brightness.light,
  textTheme: TextTheme(
    headlineLarge: AppTextStyle.regular18,
    titleLarge: AppTextStyle.regular16,
    titleMedium: AppTextStyle.regular14,
    titleSmall: AppTextStyle.regular12,
    headlineMedium: AppTextStyle.regular16,
    bodyMedium: AppTextStyle.regular16,
  ),
);
