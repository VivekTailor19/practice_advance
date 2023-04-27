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
            title: Text("Show Date Time Bottomsheet"),
            bottom: TabBar(
              indicatorColor: Colors.white,


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

          bottomNavigationBar: BottomAppBar(
            color: Colors.black,
            child: Container(height: 45,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.person_2_rounded,color: Colors.white,),
                  Icon(Icons.ac_unit_outlined,color: Colors.white,),
                  Icon(Icons.account_balance,color: Colors.white,),
                  Icon(Icons.zoom_out_map_rounded,color: Colors.white,),
                ],
              ),
            ),


          ),


        ),
      ),
    );
  }
}
