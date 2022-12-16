import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet_hack/const/global_color.dart';
import 'package:meet_hack/screen/regist_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  static const AssetImage logo_splash = AssetImage('assets/img/logo.png');
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=> (RegistrScreen())));
    });

    return Scaffold(
      body: Column(
          children: [
            ImageIcon(logo_splash, size: 150,color:AppColors.blue),
            // Container(
            //   height:30,
            //   width: 20,
            //  decoration:  BoxDecoration(color: Colors.blue),
          ],
        ),
    );
  }
}
