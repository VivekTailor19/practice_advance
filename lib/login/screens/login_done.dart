import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Login_Done extends StatefulWidget {
  const Login_Done({Key? key}) : super(key: key);

  @override
  State<Login_Done> createState() => _Login_DoneState();
}

class _Login_DoneState extends State<Login_Done> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,width: 100.w,
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/7e/48/16/7e481637defa700a7f268bbc99cf1464.jpg"),fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
