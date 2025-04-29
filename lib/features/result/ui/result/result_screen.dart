import 'package:flutter/material.dart';
import 'package:task/app/utils/asset_path.dart';
import 'package:task/app/utils/color/app_colors.dart';
import 'package:task/app/utils/sizes.dart';
import 'package:task/app/utils/text/app_text_en.dart';
import 'package:task/features/common/Widget/custom_container.dart';
import 'package:task/features/common/Widget/custom_profile_image.dart';

import '../../widget/con_color_widget.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Padding(
            padding:  EdgeInsets.all(AppSizes.defaultPadding(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text("1300"),
              //con color
              Row(
                children: [
                  ConColorWidget(color: AppColors.blue,),
                    SizedBox(width: 5,),
                  ConColorWidget(color: AppColors.red,),
                    SizedBox(width: 5,),
                    ConColorWidget(color: AppColors.secondaryPrimaryColor,),
                    SizedBox(width: 5,),
                    ConColorWidget(color: AppColors.yellow,),
                    SizedBox(width: 5,),
                    ConColorWidget(color: AppColors.orange,),
                ],
              ),

                RichText(text: TextSpan(
                  text: 'Very Unhealthy: ',style: TextStyle(
                  color: AppColors.red,
                  fontWeight: FontWeight.bold
                ),
                  children: [
                    TextSpan(
                      text: 'Your office is emitting a lot of Carbon dioxide',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ]
                ),),

                //leaf
                CustomContainer(
                    height: AppSizes.containerCirMdH,
                    width: AppSizes.containerCirMdW,
                    allRadius: AppSizes.containerCirR,
                  color: AppColors.secondaryPrimaryColor,
                  child: CustomImage(
                    imagePath: AssetImages.leafImage,
                    height: AppSizes.imageLeafH,
                    width: AppSizes.imageLeafW,
                  ),
                ),
                Text("189 indoor plants",style: Theme.of(context).textTheme.bodyLarge),
                Text("your office emits 2549ppm Carbon dioxide everyday",style: Theme.of(context).textTheme.bodySmall),
               //text row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppTextEn.plant,style: Theme.of(context).textTheme.bodyLarge),
                    Text("13/5",style: Theme.of(context).textTheme.bodySmall),


                  ],
                ),
            Stack(
              children: [
                CustomContainer(height: 12,
                  width: AppSizes.width(context),
                  allRadius: 20,
                  color: AppColors.secondaryTextColor,
                ),
                Positioned(
                    left: 0,
                    child:  CustomContainer(height: 12,
                  width: AppSizes.containerColorW,
                  allRadius: 20,
                  color: AppColors.primaryColor,
                ),)
              ],

            ),
                SizedBox(height: 50,),
                ElevatedButton(onPressed: (){},
                    child: Text("Done")),

              ],
            ),
          ),
    );
  }
}


