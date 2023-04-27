import 'package:flutter/material.dart';
import 'package:practice/counter_provider/provider/counter_provider.dart';
import 'package:practice/counter_provider/view/counter_view.dart';
import 'package:practice/drawer_n_stepper/gmaillogin.dart';
import 'package:practice/drawer_n_stepper/stepper_provider.dart';
import 'package:practice/show_date_time_bottomsheet/show.dart';
import 'package:practice/show_date_time_bottomsheet/showprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
        ChangeNotifierProvider(create: (context) => StepperProvider()),
        ChangeNotifierProvider(create: (context) => ShowProvider()),
      ],

      child: MaterialApp(
        theme: ThemeData(
          drawerTheme: DrawerThemeData(
            backgroundColor: Color(0xffF2F6FC),
            width: 200
          )
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: 'show',
        routes: {
          "/":(context) => Counter_UI(),
          "gmail":(context) => Gmail_UI(),
          "show":(context) => Show_Date_Time_BottomSheet(),


        },
      ),
    ),
  );
}
