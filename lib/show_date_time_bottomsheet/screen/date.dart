import 'package:flutter/material.dart';
import 'package:practice/show_date_time_bottomsheet/showprovider.dart';
import 'package:provider/provider.dart';

class DatePicker_Screen extends StatefulWidget {
  const DatePicker_Screen({Key? key}) : super(key: key);

  @override
  State<DatePicker_Screen> createState() => _DatePicker_ScreenState();
}

class _DatePicker_ScreenState extends State<DatePicker_Screen> {

  ShowProvider? spF;
  ShowProvider? spT;

  @override
  Widget build(BuildContext context) {

    spF = Provider.of<ShowProvider>(context,listen: false);
    spT = Provider.of<ShowProvider>(context,listen: true);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Date Picker"),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text("Today      ==>> ",),
                  SizedBox(width:30),
                  Text("${spF!.today.day} / ${spT!.today.month} / ${spT!.today.year}",style: TextStyle(fontSize: 25),),
                ],
              ),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? pdate = await showDatePicker(context: context, initialDate: spT!.sdate, firstDate: DateTime(1947), lastDate: DateTime(2050));

                    spF!.datepick(pdate!);
                  },
                  child: Text("Date Pick")),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Pick Date ",),
                  SizedBox(width:30),
                  Text("${spT!.sdate.day} / ${spT!.sdate.month} / ${spT!.sdate.year}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
                ],
              ),


            ],
          ),
      ),
    );
  }
}
