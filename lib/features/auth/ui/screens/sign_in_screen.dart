import 'package:flutter/material.dart';
import 'package:task/app/utils/sizes.dart';
import 'package:task/app/utils/text/app_text_en.dart';

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
        
          ElevatedButton(onPressed: (){},
              child: Text(AppTextEn.signIn)),
        
        ],),
      )

    );
  }
}
