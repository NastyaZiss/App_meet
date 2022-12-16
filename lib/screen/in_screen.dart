import 'package:flutter/material.dart';
import '../widgets/input.dart';
import 'regist_screen.dart';

import '../const/global_color.dart';

class InScreen extends StatefulWidget {
  const InScreen({Key? key}) : super(key: key);

  @override
  State<InScreen> createState() => _InScreenState();
}

class _InScreenState extends State<InScreen> {
  static const AssetImage logo_registr = AssetImage('assets/img/logo.png');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: ImageIcon(logo_registr, size: 100,),),
              SizedBox(height: 30,), // image logo
              Container(child: Text("Вход", style: AppStyleText.textStyle_1,),), // text avto
              SizedBox(height: 20,),
              Container(
                child: Column(
                  children: [
                    InputScreen(),
                    SizedBox(height: 20,),
                    InputScreen(),
                    SizedBox(height: 30,),
                    Container( child:
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      radius: 40,
                      child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    )
                    ),
                  ],
                ),
              ), // button
            ],
          ),
        ),
      ),
    );
  }
}
