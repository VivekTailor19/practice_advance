import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/login/share_prefer/login_share.dart';
import 'package:sizer/sizer.dart';

class Login_Splash extends StatefulWidget {
  const Login_Splash({Key? key}) : super(key: key);

  @override
  State<Login_Splash> createState() => _Login_SplashState();
}

class _Login_SplashState extends State<Login_Splash> {
  @override
  Widget build(BuildContext context)  {


    Future.delayed(Duration(seconds: 2), () async {

      LoginShare aps = LoginShare();
      Map m1 = await aps.readuser();

      bool pass =  m1['flogin'];

      pass ? Navigator.pushReplacementNamed(context,"l_done") : Navigator.pushReplacementNamed(context,"l_signin");

      }, );


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
