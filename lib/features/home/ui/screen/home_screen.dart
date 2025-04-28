import 'package:flutter/material.dart';
import 'package:task/app/utils/color/app_colors.dart';
import 'package:task/app/utils/sizes.dart';
import 'package:task/app/utils/text/app_text_en.dart';

import '../../../../app/utils/asset_path.dart';
import '../../../../app/utils/color/gradient_color.dart';
import '../../../common/Widget/custom_container.dart';
import '../../../common/Widget/custom_profile_image.dart';
import '../../../common/Widget/custom_rich_text.dart';
import '../../../common/Widget/custom_row_widget.dart';
import '../widget/number_profile_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var textTheme= Theme.of(context).textTheme;
    return Scaffold(
      body:Column(children: [
        ///header section
        _buildHeaderContainer(context,textTheme),
        Padding(
          padding:  EdgeInsets.all(AppSizes.defaultPadding(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
            Text(AppTextEn.myPlaces,style: textTheme.bodyLarge,),
            
            
            Padding(
              padding:  EdgeInsets.all(AppSizes.defaultPadding(context)),
              child: Column(
                children: [
                  NumberProfileWidget(textTheme: textTheme),
                  SizedBox(height: 20,),
                  NumberProfileWidget(textTheme: textTheme,
                  text: AppTextEn.office,
                    conRText: AppTextEn.healthy,
                    conText: AppTextEn.thirtySevenPercent,
                  ),
                ],
              ),
            ),
          
          ],
          ),
        )
        
      ],
      )
    );
  }






  ///header section
  CustomContainer _buildHeaderContainer(BuildContext context, TextTheme textTheme) {
    return CustomContainer(
        height: AppSizes.containerLgH,
        width:AppSizes.width(context),
        // width:AppSizes.containerLgW,
        leftBottomRadius:AppSizes.containerLgR ,
        rightBottomRadius:AppSizes.containerLgR ,
        gradient: AppGradients.containerLgGradient,
        child: Padding(
          padding:  EdgeInsets.all(AppSizes.defaultPadding(context)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(children: [
                  Text(AppTextEn.goodMorning,style: textTheme.bodyLarge,),
                  Text(AppTextEn.ahmedAriyan,style: textTheme.headlineMedium,),
                ],),

                CustomImage(),

              ],),
              Spacer(),
              CustomRichText(
                firstText:AppTextEn.youAre,
                secondText: AppTextEn.healthy,
                thirdText: AppTextEn.environment,
              ),
            ],
          ),
        ),

       );
  }
}











