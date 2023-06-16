import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Sliver_Practice extends StatefulWidget {
  const Sliver_Practice({super.key});

  @override
  State<Sliver_Practice> createState() => _Sliver_PracticeState();
}

class _Sliver_PracticeState extends State<Sliver_Practice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Icon(Icons.menu_rounded),
              title: Text("Sliver",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700),),
              actions: [Icon(Icons.more_vert_rounded)],
              expandedHeight: 150,
              collapsedHeight: 90,
              pinned: true,
              // snap: true,
              floating: true,
              flexibleSpace: Align(alignment: Alignment.centerLeft,
              child: FlutterLogo(size: 80)),
              // bottom: PreferredSize(
              //   child: Container(
              //     alignment: Alignment.centerLeft,
              //     child:  FlutterLogo(size: 50),
              //   ),
              //   preferredSize: Size.fromHeight(80),
              // )

            ),

            SliverList(
              delegate: SliverChildListDelegate([
                Container(margin: EdgeInsets.all(10),
                height: 150,width: 150,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent.shade200),
                ),
                Container(margin: EdgeInsets.all(10),
                  height: 150,width: 150,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.shade200),
                ),
                Container(margin: EdgeInsets.all(10),
                height: 150,width: 150,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pinkAccent.shade200),
                ),
                Container(margin: EdgeInsets.all(10),
                height: 150,width: 150,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellowAccent.shade200),
                ),
                Container(margin: EdgeInsets.all(10),
                height: 150,width: 150,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent.shade200),
                ),
                Container(margin: EdgeInsets.all(10),
                  height: 150,width: 150,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent.shade200),
                ),
                Container(margin: EdgeInsets.all(10),
                  height: 150,width: 150,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pinkAccent.shade200),
                ),
                Container(margin: EdgeInsets.all(10),
                  height: 150,width: 150,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellowAccent.shade200),
                ),

              ]),
            ),
            SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(margin: EdgeInsets.all(15),
              height: 150,width: 150,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent.shade200),
              );

            },childCount: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

            )


          ],
        ),
      ),
    );
  }
}
