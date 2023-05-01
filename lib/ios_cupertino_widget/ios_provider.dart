import 'package:flutter/cupertino.dart';

class iOSProvider extends ChangeNotifier
{
  DateTime todayday = DateTime.now();
  DateTime tday = DateTime.now();
  void updatedate(DateTime temp)
  {
    tday = temp;
    notifyListeners();
  }
}