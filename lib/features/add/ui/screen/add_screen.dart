import 'package:flutter/material.dart';
import 'package:task/app/utils/sizes.dart';
import 'package:task/app/utils/text/app_text_en.dart';
import 'package:task/features/common/Widget/custom_container.dart';
import 'package:task/features/common/Widget/custom_divider.dart';
import 'package:task/features/common/Widget/custom_profile_image.dart';

import '../../../../app/utils/asset_path.dart';
import '../../../../app/utils/color/app_colors.dart';
import '../widget/calculate_widget.dart';
import '../widget/count_widget.dart';
import '../widget/number_widget.dart';


class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    var textTheme= Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(AppSizes.defaultPadding(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImage(imagePath:"assets/icons/back.png",
                        height: 8,
                          width: 18,
                        ), SizedBox(),
                      ],
                    ),
                Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CustomImage(imagePath: AssetImages.officeImage,
            height: AppSizes.imageOfcH,
              width: AppSizes.imageOfcW,
            ),
            Column(children: [
         Text("data",style: textTheme.bodyMedium!.copyWith(fontSize: 18),),
              CustomDivider(),
            ],
            ),

          ],),
          SizedBox(height: 20,),
          CalculateWidget(text: AppTextEn.totalNumberOfPeople, number: AppTextEn.fiftyTwo,),
          CalculateWidget(text: AppTextEn.totalNumberOfRooms, number: AppTextEn.thirtySevenHundred,),
          CalculateWidget(text: AppTextEn.totalArea, number: AppTextEn.five,),
          CalculateWidget(text: AppTextEn.totalAC, number: AppTextEn.two,),
          CalculateWidget(text: AppTextEn.totalRefrigerator, number: AppTextEn.fiftyTwo,),
          CalculateWidget(text: AppTextEn.totalComputers, number: AppTextEn.sixty,),
          CalculateWidget(text: AppTextEn.totalIndoorPlants, number: AppTextEn.twentyThree,),
          CalculateWidget(text: AppTextEn.totalKitchenBurner, number: AppTextEn.two,),
          ElevatedButton(onPressed: (){},
              child:Text(AppTextEn.calculateCarbonEmission))

        ],),
      ),
    );
  }
}






