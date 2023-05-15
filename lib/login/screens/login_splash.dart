import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Login_Splash extends StatefulWidget {
  const Login_Splash({Key? key}) : super(key: key);

  @override
  State<Login_Splash> createState() => _Login_SplashState();
}

class _Login_SplashState extends State<Login_Splash> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 3), () => Navigator.pushReplacementNamed(context, 'l_done'), );


    return SafeArea(
      child: Scaffold(
          body: Container(
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/originals/d2/ab/01/d2ab0118ff8f5b33f4ab4fe7ac7ebb07.jpg"),
            fit: BoxFit.fill,
          ),
        ),
      )),
    );
  }
}
