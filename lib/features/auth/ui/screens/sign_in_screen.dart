import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/app/utils/sizes.dart';
import 'package:task/app/utils/text/app_text_en.dart';
import 'package:task/features/auth/ui/screens/send_otp_screen.dart';
import 'package:task/features/common/Widget/custom_profile_image.dart';

import '../../../../app/utils/asset_path.dart';
import '../../../../app/utils/color/app_colors.dart';
import '../widget/check_remember_widget.dart';
import '../widget/icon_widget.dart';
import '../widget/rich_text_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var textTheme= Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(AppSizes.defaultPadding(context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(AppTextEn.signIn,style:textTheme.headlineLarge ,),
          Text(AppTextEn.letsSaveEnvironment,style: textTheme.headlineSmall,),
          Form(
            key: _formKey,
              child: Column(
            children: [
              Text(AppTextEn.email,style: textTheme.labelMedium,),
              TextFormField(
              decoration: InputDecoration(
                hintText: AppTextEn.userExample
              ),
                validator: (String? value){
                if(value!.isEmpty){
                  return 'Please enter email';
                }
                return null;
                },
              ),
              Text(AppTextEn.password,style: textTheme.labelMedium,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: AppTextEn.password
                ),
                validator: (String? value){
                  if(value!.isEmpty){
                    return 'Please enter password';
                  }
                  return null;
                },
              ),
            ],
          )),
        

            ///forget password
            Row(children: [
              SizedBox(),
              Spacer(),
              ///forget password button
              TextButton(
                onPressed: () {
                  Get.to(SendOtpScreen());
                },
                child: Text("forget password", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.primaryColor)),
              ),
            ],
            ),
            CheckBoxRow(),
            ElevatedButton(onPressed: (){},
                child: Text(AppTextEn.signIn)),
            Text(AppTextEn.orSignInWith,style: textTheme.bodySmall,),
            Padding(
              padding:  EdgeInsets.all(AppSizes.defaultPadding(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                         IconWidget(image: AssetImages.googleIcon,),
                IconWidget(image: AssetImages.facebookIcon,),
                IconWidget(image: AssetImages.microsoftIcon,),
                IconWidget(image: AssetImages.appleIcon,),
              ],),
            ),
            RichTextWidget(normalText: "don't have an account? ", actionText:AppTextEn.signUp, onTap: () {
              debugPrint("resend");
            },),

        
        ],),
      )

    );
  }
}


