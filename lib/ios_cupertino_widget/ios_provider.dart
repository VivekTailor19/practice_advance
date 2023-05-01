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


  List<String> fruitNames = <String>[
    'Apple',
    'Mango',
    'Banana',
    'Orange',
    'Pineapple',
    'Strawberry',
  ];

  String fruit = "Select below";

  void updatefruit(int index)
  {
    fruit = fruitNames[index];
    notifyListeners();
  }




}