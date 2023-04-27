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
          title: Text("Botttom Picker"),
        ),
        body: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
