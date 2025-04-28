import 'package:flutter/material.dart';

import '../../../../app/utils/color/app_colors.dart';
import '../../../../app/utils/sizes.dart';
import '../../../common/Widget/custom_container.dart';
import 'count_widget.dart';


class CalculateWidget extends StatelessWidget {
  const CalculateWidget({
    super.key, required this.text, required this.number,
  });

  final String text;
  final String number;


  @override
  Widget build(BuildContext context) {
    var textTheme= Theme.of(context).textTheme;
    return Row(children: [
      CustomContainer(height: AppSizes.containerCirXSmH,
        width:  AppSizes.containerCirXSmW,
        allRadius: AppSizes.containerCirR,
      ),
      Text(text,style: textTheme.bodySmall!.copyWith(color: AppColors.primaryTextColor),),
      CountWidget(icon: Icons.add,),
      Text(number,style: textTheme.headlineMedium,),
      CountWidget(icon: Icons.remove,),


    ],);
  }
}