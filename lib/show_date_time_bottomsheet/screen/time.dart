import 'package:flutter/material.dart';

class TimePicker_Screen extends StatefulWidget {
  const TimePicker_Screen({Key? key}) : super(key: key);

  @override
  State<TimePicker_Screen> createState() => _TimePicker_ScreenState();
}

class _TimePicker_ScreenState extends State<TimePicker_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Time Picker"),
        ),
        body: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
