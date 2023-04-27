import 'package:flutter/material.dart';

class BottomSheet_Screen extends StatefulWidget {
  const BottomSheet_Screen({Key? key}) : super(key: key);

  @override
  State<BottomSheet_Screen> createState() => _BottomSheet_ScreenState();
}

class _BottomSheet_ScreenState extends State<BottomSheet_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Botttom Sheet"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [



              ElevatedButton(onPressed: () {
                showBottomSheet(context: context, builder: (context) {
                  return BottomSheet(onClosing: () {
                    //  Place Fuction here if you want.....
                  }, builder:(context) {
                    return Container(height: 150,
                    width: double.infinity,
                    color: Colors.greenAccent,
                    child: Text("Hello World \n It's Simple BottomSheet"));
                  },);
                },);
              }, child: Text("showBottomSheet")),
              ElevatedButton(onPressed: () {
                showModalBottomSheet(context: context, builder: (context) {
                  return BottomSheet(onClosing: () {
                    //  Place Fuction here if you want.....
                  }, builder:(context) {
                    return Container(
                      height: 150,
                        color: Colors.pinkAccent,
                        child: Text("Hello World \n It's Simple ModalBottomSheet"));
                  },);
                },);
              }, child: Text("showModalBottomSheet")),
            ],
          ),
        )
      ),
    );
  }
}
