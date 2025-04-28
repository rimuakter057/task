
import 'package:flutter/material.dart';
import 'package:task/app/utils/sizes.dart';


import '../../color/app_colors.dart';
class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonThemeData(BuildContext context) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize:  Size(AppSizes.width(context), 42),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.white,
        textStyle: Theme.of(context).textTheme.titleMedium,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
