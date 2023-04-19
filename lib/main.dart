import 'package:flutter/material.dart';
import 'package:practice/counter_provider/provider/counter_provider.dart';
import 'package:practice/counter_provider/view/counter_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context) => Counter_UI(),


        },
      ),
    ),
  );
}
