import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../showprovider.dart';

class TimePicker_Screen extends StatefulWidget {
  const TimePicker_Screen({Key? key}) : super(key: key);

  @override
  State<TimePicker_Screen> createState() => _TimePicker_ScreenState();
}

class _TimePicker_ScreenState extends State<TimePicker_Screen> {

  ShowProvider? spF;
  ShowProvider? spT;

  @override
  Widget build(BuildContext context) {

    spF = Provider.of<ShowProvider>(context,listen: false);
    spT = Provider.of<ShowProvider>(context,listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Time Picker"),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text("Current      ==>> ",),
                SizedBox(width:30),
                Text("${spF!.current.hour} : ${spT!.current.minute}",style: TextStyle(fontSize: 25),),
              ],
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? ptime = await showTimePicker(context: context, initialTime: TimeOfDay(hour: spT!.current.hour, minute: spT!.current.minute),);

                  spF!.timepick(ptime!);
                },
                child: Text("Date Pick")),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Pick Time in 24 hour",),
                SizedBox(width:30),
                Text("${spT!.stime.hour} : ${spT!.stime.minute}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
