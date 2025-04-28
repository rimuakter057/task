import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppGradients {
  AppGradients._(); // Private constructor to prevent instantiation


static LinearGradient buttonGradient =  LinearGradient(
  colors: [AppColors.blue, AppColors.indigo],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);


}
