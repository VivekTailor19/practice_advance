import 'package:flutter/material.dart';
import 'package:practice/counter_provider/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class Counter_UI extends StatefulWidget {
  const Counter_UI({Key? key}) : super(key: key);

  @override
  State<Counter_UI> createState() => _Counter_UIState();
}

class _Counter_UIState extends State<Counter_UI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.lightBlueAccent.shade100,
        floatingActionButton: FloatingActionButton(onPressed: () {


          Provider.of<CounterProvider>(context,listen: false).plus1();


        },
        child: Text("+1",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
        body: Center(
          child: Column(
            children: [



              Container(height: 100,width: 200,alignment: Alignment.center,
              child: Consumer<CounterProvider>(
                  builder: (context, value, child) =>
                      Text("${value.n}",style: TextStyle(color: Colors.indigo.shade900,fontSize: 30),)),),
            ],
          ),
        ),
      ),
    );
  }
}
