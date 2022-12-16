import 'package:flutter/material.dart';

import '../const/global_color.dart';
import '../widgets/input.dart';

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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: ImageIcon(logo_registr, size: 100,color: AppColors.blue,),), // image logo
              Container(child: Text("Регистрация", style: AppStyleText.textStyle_1,),), // text avto
              SizedBox(height: 20,),
              Container(
                child: Column(
                  children: [
                    InputScreen(),
                    // TextField(
                    //   decoration: InputDecoration(),
                    // ),
                    SizedBox(height: 20,),
                    InputScreen(),
                    SizedBox(height: 20,),
                    InputScreen(),
                    SizedBox(height: 20,),
                    InputScreen(),
                    SizedBox(height: 20,),
                    InputScreen(),
                    SizedBox(height: 20,),
                    InputScreen(),
                    SizedBox(height: 30,),
                    Container( child:
                    CircleAvatar(
                      backgroundColor: AppColors.blue,
                      radius: 40,
                      child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    )
                    ),
                    SizedBox(height: 10,)
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



