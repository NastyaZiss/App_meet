import 'package:flutter/material.dart';

import '../const/global_color.dart';

class RegistrScreen extends StatefulWidget {
  const RegistrScreen({Key? key}) : super(key: key);

  @override
  State<RegistrScreen> createState() => _RegistrScreenState();
}

class _RegistrScreenState extends State<RegistrScreen> {
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

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 7,
                offset: Offset(1,1),
                color: Colors.grey.withOpacity(0.2)
            )
          ]
      ),
      child: TextField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.white,
                  width: 1.0
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                  color: Colors.white,
                  width: 1.0
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
            )
        ),
      ),
    );
  }
}

