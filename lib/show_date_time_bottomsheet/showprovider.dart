import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShowProvider extends ChangeNotifier
{
  DateTime today = DateTime.now();
  DateTime sdate = DateTime.now();

  void datepick(DateTime pdate)
  {
    sdate = pdate;
    notifyListeners();
  }

  TimeOfDay current = TimeOfDay.now();
  TimeOfDay stime = TimeOfDay.now();

  void timepick(TimeOfDay ptime)
  {
    stime = ptime;
    notifyListeners();

  }



}