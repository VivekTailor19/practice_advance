import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/login/share_prefer/login_share.dart';
import 'package:sizer/sizer.dart';

class Login_SignIn extends StatefulWidget {
  const Login_SignIn({Key? key}) : super(key: key);

  @override
  State<Login_SignIn> createState() => _Login_SignInState();
}

class _Login_SignInState extends State<Login_SignIn> {

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
                  image: AssetImage(
                      "assets/hacker.jpeg"),
                  fit: BoxFit.fill)),
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SIGN IN",style: TextStyle(fontSize: 50,color: Colors.red),),
              SizedBox(height: 6.h,),

              SizedBox(height: 3.h,),
              TextField(
                controller: txtmail,
                style: TextStyle(color: Colors.white,fontSize: 20),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,size: 30,color: Colors.white,),
                  hintText: "Enter Email Id",
                  hintStyle: TextStyle(color: Colors.white,fontSize: 17),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(15)),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(25)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(25)),


                ),
              ),
              SizedBox(height: 3.h,),
              TextField(
                controller: txtpass,
                style: TextStyle(color: Colors.white,fontSize: 20),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,size: 30,color: Colors.white,),
                  hintText: "Enter Secure Password",
                  hintStyle: TextStyle(color: Colors.white,fontSize: 17),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(15)),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(25)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(25)),


                ),
              ),
              SizedBox(height: 6.h,),

              FloatingActionButton.extended(onPressed: () async {

                LoginShare ls = LoginShare();
                Map m1user =await ls.readuser();

                if(m1user['fmail']==txtmail.text && m1user['fpass']==txtpass.text )
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Successfully Login"),
                      backgroundColor: Colors.teal.shade900,
                      behavior: SnackBarBehavior.floating,
                    ));

                    Navigator.pushReplacementNamed(context, "l_done");
                  }
                else
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Wrong Email or Password..."),
                      backgroundColor: Colors.teal.shade900,
                      behavior: SnackBarBehavior.floating,
                    ));
                  }

              }, label: Text("Sign In",style: TextStyle(fontSize: 18),),
                backgroundColor: Colors.red,
              ),
              Spacer(),

              TextButton(onPressed: () {
                Navigator.pushNamed(context, "l_signup");

              }, child: Text('Don\'t have Account ? Sign Up',style: TextStyle(color: Colors.red,fontSize: 17,),))

            ],
          ),
        ),
      ),
    );
  }
}
