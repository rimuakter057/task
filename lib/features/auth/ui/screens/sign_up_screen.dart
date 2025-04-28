import 'package:flutter/material.dart';
import 'package:task/app/utils/sizes.dart';
import 'package:task/app/utils/text/app_text_en.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

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
              Text(AppTextEn.signUp,style:textTheme.headlineLarge ,),
              Text(AppTextEn.letsSaveEnvironment,style: textTheme.headlineSmall,),
             SizedBox(height: 20,),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppTextEn.name,style: textTheme.labelMedium,),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: AppTextEn.exampleName
                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return 'Please enter name';
                          }
                          return null;
                        },
                      ),
                      Text(AppTextEn.phoneNumber,style: textTheme.labelMedium,),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: AppTextEn.phoneNumber
                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return 'Please enter number';
                          }
                          return null;
                        },
                      ),
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
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){},
                  child: Text(AppTextEn.signUp)),

            ],),
        )

    );
  }
}
