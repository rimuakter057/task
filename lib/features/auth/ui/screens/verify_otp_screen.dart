import 'package:flutter/material.dart';
import 'package:task/app/utils/sizes.dart';
import 'package:task/app/utils/text/app_text_en.dart';
import 'package:task/features/common/Widget/custom_rich_text.dart';

import '../widget/rich_text_widget.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {

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
              Text(AppTextEn.verifyOtp,style:textTheme.headlineLarge ,),
              Text(AppTextEn.recoverAccountEasySteps,style: textTheme.headlineSmall,),
              CustomRichText(firstText: "an email has been sent to ",
                  secondText: AppTextEn.userExample,
                  thirdText: " please enter the sent otp"),
              
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

              ElevatedButton(onPressed: (){},
                  child: Text(AppTextEn.verifyOtp)),

              RichTextWidget(normalText: AppTextEn.didntReceiveCode, actionText:AppTextEn.resend, onTap: () {
                debugPrint("resend");
              },),

            ],),
        )

    );
  }
}
