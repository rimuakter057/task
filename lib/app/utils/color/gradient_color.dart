import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppGradients {
  AppGradients._(); // Private constructor to prevent instantiation

  static LinearGradient containerLgGradient =  LinearGradient(
    colors: [AppColors.homeGradientStartColor, AppColors.homeGradientEndColor],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient containerSmGradient =  LinearGradient(
    colors: [AppColors.homeGradientStartColor, AppColors.homeGradientEndColor],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );


  static LinearGradient containerWhiteGradient =  LinearGradient(
    colors: [Color(0xFFF8FFFB), AppColors.white],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
}
