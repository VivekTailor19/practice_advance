import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier
{
  int n = 1;
  void plus1()
  {
    n++;
    notifyListeners();
  }
}