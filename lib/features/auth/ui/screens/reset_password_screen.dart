import 'package:flutter/material.dart';
import 'package:task/app/utils/sizes.dart';
import 'package:task/app/utils/text/app_text_en.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

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
              Text(AppTextEn.resetPassword,style:textTheme.headlineLarge ,),
             Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      Text(AppTextEn.confirmPassword,style: textTheme.labelMedium,),
                      TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.visibility_off_outlined),
                            hintText: AppTextEn.confirmPassword
                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return 'Please enter confirm password';
                          }
                          return null;
                        },
                      ),
                    ],
                  )),

              ElevatedButton(onPressed: (){},
                  child: Text(AppTextEn.resetPassword)),

            ],),
        )

    );
  }
}
