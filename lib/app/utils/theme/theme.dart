
import 'package:flutter/material.dart';
import 'package:task/app/utils/color/app_colors.dart';
import 'custom_theme/text_field_theme.dart';
import 'custom_theme/text_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
      primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme(context),
   // elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonThemeData,
    //inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme(context),
  );

}
