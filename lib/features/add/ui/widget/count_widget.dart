import 'package:flutter/material.dart';

import '../../../../app/utils/color/app_colors.dart';
import '../../../../app/utils/sizes.dart';
import '../../../common/Widget/custom_container.dart';



class CountWidget extends StatelessWidget {
  const CountWidget({
    super.key, required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(height: AppSizes.containerCirSmH,
      width:  AppSizes.containerCirSmW,
      allRadius: AppSizes.containerCirSmR,
      color:AppColors.greyShade ,
      child: Icon(icon,color: AppColors.countIcon,),
    );
  }
}