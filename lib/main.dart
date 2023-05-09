

import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practice/carosel_slider_practice/newsliderview.dart';
import 'package:practice/counter_provider/provider/counter_provider.dart';
import 'package:practice/counter_provider/view/counter_view.dart';
import 'package:practice/drawer_n_stepper/gmaillogin.dart';
import 'package:practice/drawer_n_stepper/stepper_provider.dart';
import 'package:practice/ios_cupertino_widget/ios_provider.dart';
import 'package:practice/show_date_time_bottomsheet/show.dart';
import 'package:practice/show_date_time_bottomsheet/showprovider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'carosel_slider_practice/carosel_slider_provider.dart';
import 'ios_cupertino_widget/cupertino_practice.dart';

void main() {
  runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
        ChangeNotifierProvider(create: (context) => StepperProvider()),
        ChangeNotifierProvider(create: (context) => ShowProvider()),
        ChangeNotifierProvider(create: (context) => iOSProvider(),),
        ChangeNotifierProvider(create: (context) => NewSliderProvider(),),

      ],



      child:
      //Platform.isIOS == true ?

        // CupertinoApp(
        //   debugShowCheckedModeBanner: false,
        //   initialRoute: "cupertino",
        //   routes: {
        //     "/":(context) => Cupertino_Practice(),
        //     "cupertino":(context) => Cupertino_Practice(),
        //   },
        // )

                // :
        //
        Sizer(
          builder: (context, orientation, deviceType) => MaterialApp(
            theme: ThemeData(
              drawerTheme: DrawerThemeData(
                backgroundColor: Color(0xffF2F6FC),
                width: 200
              )
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: 'carosel',
            routes: {
              "/":(context) => Counter_UI(),
              "gmail":(context) => Gmail_UI(),
              "show":(context) => Show_Date_Time_BottomSheet(),
              "carosel":(context) => NewSlider(),


            },
          ),
        ),
    ),
      ),
  );
}
