import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/login/share_prefer/login_share.dart';
import 'package:sizer/sizer.dart';

class Login_SignUp extends StatefulWidget {
  const Login_SignUp({Key? key}) : super(key: key);

  @override
  State<Login_SignUp> createState() => _Login_SignUpState();
}

class _Login_SignUpState extends State<Login_SignUp> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtmail = TextEditingController();
  TextEditingController txtpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/hacker.jpeg"), fit: BoxFit.fill)),
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SIGN UP",
                style: TextStyle(fontSize: 50, color: Colors.red),
              ),
              SizedBox(
                height: 6.h,
              ),
              TextField(
                controller: txtname,
                style: TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                  ),
                  hintText: "Enter Name",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 17),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              TextField(
                controller: txtmail,
                style: TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                  ),
                  hintText: "Enter Email Id",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 17),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              TextField(
                controller: txtpass,
                style: TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                  ),
                  hintText: "Enter Secure Password",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 17),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  LoginShare ls = LoginShare();
                  ls.createuser(iname: txtname.text, iemail: txtmail.text, ipass: txtpass.text,ilogin: true);

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Account Created Successfully"),
                    backgroundColor: Colors.teal.shade900,
                    behavior: SnackBarBehavior.floating,
                  ));

                  Navigator.pushNamed(context, "l_signin");


                },
                label: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 18),
                ),
                backgroundColor: Colors.red,
              ),
              Spacer(),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "l_signin");
                  },
                  child: Text(
                    'Already had Account ? Sign In',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
