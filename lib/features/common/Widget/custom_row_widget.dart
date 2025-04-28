import 'package:flutter/material.dart';

import '../../../app/utils/color/app_colors.dart';
import '../../../app/utils/sizes.dart';
import '../../../app/utils/text/app_text_en.dart';
import 'custom_container.dart';


class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({
    super.key, this.firstWidget, this.secondWidget, this.text, this.containerText,

  });

  final Widget? firstWidget;
  final Widget? secondWidget;
  final String? text;
  final String? containerText;
  @override
  Widget build(BuildContext context) {
    var textTheme= Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        firstWidget?? Text(text??AppTextEn.myPlaces,style: textTheme.bodyLarge),
        secondWidget??  CustomContainer(
            height: AppSizes.containerSmH,
            width: AppSizes.containerSmW,
            allRadius: AppSizes.containerSmR,
            child: Center(child: Text(containerText??AppTextEn.good,style: textTheme.bodySmall!.copyWith(color: AppColors.white),))),
      ],
    );
  }
}