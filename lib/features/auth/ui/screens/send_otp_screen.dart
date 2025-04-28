import 'package:flutter/material.dart';
import 'package:task/app/utils/sizes.dart';
import 'package:task/app/utils/text/app_text_en.dart';

class SendOtpScreen extends StatefulWidget {
  const SendOtpScreen({super.key});

  @override
  State<SendOtpScreen> createState() => _SendOtpScreenState();
}

class _SendOtpScreenState extends State<SendOtpScreen> {

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
              Text(AppTextEn.sendOtp,style:textTheme.headlineLarge ,),
              Text(AppTextEn.recoverAccountEasySteps,style: textTheme.headlineSmall,),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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

                    ],
                  )),

              ElevatedButton(onPressed: (){},
                  child: Text(AppTextEn.sendOtp)),

            ],),
        )

    );
  }
}
