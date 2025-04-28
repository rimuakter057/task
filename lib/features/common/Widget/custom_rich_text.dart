import 'package:flutter/material.dart';

import '../../../app/utils/color/app_colors.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key, required this.firstText, required this.secondText, required this.thirdText, this.secondColor, this.firstColor,

  });

  final String firstText;
  final String secondText;
  final String thirdText;
  final Color? secondColor;
  final Color? firstColor;

  @override
  Widget build(BuildContext context) {
    var textTheme= Theme.of(context).textTheme;
    return RichText(text:
    TextSpan(
        text: firstText,
        style: textTheme.bodyMedium!.copyWith(color:firstColor?? AppColors.secondaryTextColor),
        children: [
          TextSpan(
            text: secondText,
            style: textTheme.bodyMedium!.copyWith(color:secondColor?? AppColors.primaryColor),
          ),
          TextSpan(
            text:thirdText,
            style: textTheme.bodyMedium,
          )
        ]
    ),
    );
  }
}
