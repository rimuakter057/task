import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var textTheme= Theme.of(context).textTheme;

    return Scaffold(

      body: Center(child: Text("check size",style: textTheme.headlineLarge,),),
    );
  }
}
