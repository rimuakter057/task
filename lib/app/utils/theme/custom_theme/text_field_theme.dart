import 'package:flutter/material.dart';
import '../../color/app_colors.dart';

class AppTextFormFieldTheme {
  AppTextFormFieldTheme._();

  // Light Theme
  static InputDecorationTheme lightInputDecorationTheme(BuildContext context) {


    return InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.secondaryTextColor),
      ),
prefixIconColor: AppColors.secondaryTextColor,
      hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(color:AppColors.secondaryTextColor ),

       );
  }



}
