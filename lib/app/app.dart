import 'package:flutter/material.dart';
import 'package:task/app/utils/theme/theme.dart';
import 'package:task/features/auth/ui/screens/reset_password_screen.dart';
import 'package:task/features/auth/ui/screens/verify_otp_screen.dart';

import '../features/add/ui/screen/add_screen.dart';
import '../features/auth/ui/screens/send_otp_screen.dart';
import '../features/auth/ui/screens/sign_in_screen.dart';
import '../features/auth/ui/screens/sign_up_screen.dart';
import '../features/auth/ui/screens/splash_Screen.dart';
import '../features/home/ui/screen/home_screen.dart';
import '../features/practice/search_screen.dart';
import '../features/practice/service/network_caller.dart';
import '../features/result/ui/result/result_screen.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme(context),
      home: SearchScreen(),
    );
  }
}