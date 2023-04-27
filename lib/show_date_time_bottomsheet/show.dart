import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/show_date_time_bottomsheet/screen/bottomsheet.dart';
import 'package:practice/show_date_time_bottomsheet/screen/date.dart';
import 'package:practice/show_date_time_bottomsheet/screen/time.dart';

class Show_Date_Time_BottomSheet extends StatefulWidget {
  const Show_Date_Time_BottomSheet({Key? key}) : super(key: key);

  @override
  State<Show_Date_Time_BottomSheet> createState() =>
      _Show_Date_Time_BottomSheetState();
}



class _Show_Date_Time_BottomSheetState
    extends State<Show_Date_Time_BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Show"),
            bottom: TabBar(


              tabs: [
                Tab(icon: Icon(Icons.date_range_rounded),text: 'Date',),
                Tab(icon: Icon(Icons.timer_outlined),text: 'Time',),
                Tab(icon: Icon(Icons.upload),text: 'BottomSheet'),
              ],
            ),

          ),
          body: TabBarView(
            children: [
              DatePicker_Screen(),
              TimePicker_Screen(),
              BottomSheet_Screen(),
            ],
          ),

          bottomNavigationBar: BottomNavigationBar(

            items: [
              BottomNavigationBarItem(icon: Icon(Icons.person),label: "",backgroundColor: Colors.red,),
              BottomNavigationBarItem(icon:Icon(Icons.ac_unit_outlined),label: ""),
              BottomNavigationBarItem(icon:Icon(Icons.account_balance),label: ""),
              BottomNavigationBarItem(icon:Icon(Icons.zoom_out_map_rounded),label: ""),

            ],
          ),


        ),
      ),
    );
  }
}
