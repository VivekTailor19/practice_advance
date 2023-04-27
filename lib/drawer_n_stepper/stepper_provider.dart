import 'package:flutter/cupertino.dart';

class StepperProvider extends ChangeNotifier
{

  int currentstep = 0;

  void stepcontinue()
  {
    if(currentstep<3)
      {
        currentstep++;
      }

    notifyListeners();
  }

  void stepcancel()
  {

    if(currentstep>0)
      {
        currentstep--;
      }

    notifyListeners();
  }

  // bool done = false;
  //
  // void confirm()
  // {
  //   done = true;
  //   notifyListeners();
  // }

}