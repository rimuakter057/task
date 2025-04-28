import 'package:flutter/material.dart';
import 'package:task/app/utils/theme/theme.dart';

import '../features/add/ui/screen/add_screen.dart';
import '../features/auth/ui/screens/sign_in_screen.dart';
import '../features/auth/ui/screens/sign_up_screen.dart';
import '../features/home/ui/screen/home_screen.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme(context),
      home: SignUpScreen(),
    );
  }
}