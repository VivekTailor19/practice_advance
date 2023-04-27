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
          centerTitle: true,
            backgroundColor: Colors.black
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [



              ElevatedButton(onPressed: () {
                showBottomSheet(context: context, builder: (context) {
                  return BottomSheet(

                  onClosing: () {
                    //  Place Fuction here if you want.....
                  }, builder:(context) {
                    return
                      Container(height: 150,
                      width: double.infinity,
                      color: Colors.lightBlueAccent.shade100,
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Hello World \n It's Simple BottomSheet\n\n To close bottom sheet click on cross icon"),
                          IconButton(onPressed: () {
                            Navigator.pop(context);
                          }, icon: Icon(Icons.close_rounded,color: Colors.red,size: 35,))
                        ],
                      ));
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
                        color: Colors.pinkAccent.shade100,
                        alignment: Alignment.center,
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
