import 'package:flutter/material.dart';

import '../../../../app/utils/asset_path.dart';
import '../../../../app/utils/color/app_colors.dart';
import '../../../../app/utils/sizes.dart';
import '../../../../app/utils/text/app_text_en.dart';
import '../../../common/Widget/custom_container.dart';
import '../../../common/Widget/custom_profile_image.dart';
import '../../../common/Widget/custom_row_widget.dart';



class NumberProfileWidget extends StatelessWidget {
  const NumberProfileWidget({
    super.key,
    required this.textTheme, this.text, this.conText, this.conRText,
  });

  final TextTheme textTheme;
  final String?text;
  final String?conText;
  final String?conRText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///CustomRowWidget
        CustomRowWidget(
          text:text?? AppTextEn.myPlaces,
          containerText:conRText??AppTextEn.good ,
        ),
        /// number and profile section
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppTextEn.sixHundredFiftyTwo,style: textTheme.headlineLarge!.copyWith(
                  fontSize: 48,
                )),
                Column(
                  children: [
                    CustomContainer(
                        height: AppSizes.containerXSmH,
                        width: AppSizes.containerXSmW,
                        allRadius: AppSizes.containerSmR,
                        child: Padding(
                          padding:  EdgeInsets.all(AppSizes.defaultXsmPadding(context)),
                          child: Row(
                            children: [
                              CustomImage(
                                imagePath: AssetImages.dropIcon,
                                height: AppSizes.iconDrH,
                                width: AppSizes.iconDrW,
                                color: AppColors.white,
                              ),
                              Text(conText??AppTextEn.thirteenPercent,style: textTheme.bodySmall!.copyWith(color: AppColors.white),),

                            ],
                          ),
                        )),
                    Text(AppTextEn.ppm,style: textTheme.bodyLarge!.copyWith(
                        color: AppColors.primaryColor
                    )),
                  ],
                ),

              ],
            ),
            Spacer(),
            Column(
              children: [
                CustomImage(
                  height: 10,
                  width: 10,
                ),
                Row(
                  children: [
                    Text(AppTextEn.viewDetails,style: textTheme.bodySmall!.copyWith(color: AppColors.primaryColor),),
                    SizedBox(width: 2,),
                    CustomImage(
                      imagePath: AssetImages.dropPColor,
                      height: AppSizes.iconDrH,
                      width: AppSizes.iconDrW,
                    ),

                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}