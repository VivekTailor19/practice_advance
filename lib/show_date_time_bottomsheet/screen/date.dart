import 'package:flutter/material.dart';

class DatePicker_Screen extends StatefulWidget {
  const DatePicker_Screen({Key? key}) : super(key: key);

  @override
  State<DatePicker_Screen> createState() => _DatePicker_ScreenState();
}

class _DatePicker_ScreenState extends State<DatePicker_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Date Picker"),
        ),
        body: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
