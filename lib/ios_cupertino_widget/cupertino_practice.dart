import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'ios_provider.dart';

class Cupertino_Practice extends StatefulWidget {
  const Cupertino_Practice({Key? key}) : super(key: key);

  @override
  State<Cupertino_Practice> createState() => _Cupertino_PracticeState();
}

class _Cupertino_PracticeState extends State<Cupertino_Practice> {

  iOSProvider? ipF;
  iOSProvider? ipT;


  @override
  Widget build(BuildContext context) {

    ipF = Provider.of<iOSProvider>(context,listen: false);
    ipT = Provider.of<iOSProvider>(context,listen: true);

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Cupertino"),
        leading: Icon(CupertinoIcons.back),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CupertinoActivityIndicator(
                  animating: false,
                  radius: 20,
                  color: CupertinoColors.destructiveRed,
                ),
                const Text("Hello"),
                const CupertinoActivityIndicator(
                  radius: 20,
                  color: CupertinoColors.systemOrange,
                ),
              ],
            ),

            CupertinoButton.filled(child: const Text("Hello"), onPressed: () {
               showCupertinoDialog(context: context, builder: (context) {
                return CupertinoAlertDialog(

                  title: Text("Are Sure to Quit ?"),
                  content: Text("Happy to See You"),

                  actions: [

                    CupertinoDialogAction(
                      child: Text('No'),
                      isDefaultAction: true,
                      onPressed: () => Navigator.pop(context),
                      ),

                    CupertinoDialogAction(
                      child: Text('Yes'),
                      isDestructiveAction: true,
                      onPressed: () => Navigator.pop(context),
                    ),





                    // Padding(
                    //   padding: EdgeInsets.all(8.0),
                    //   child: Icon(CupertinoIcons.airplane),
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.all(8.0),
                    //   child: Icon(CupertinoIcons.ant),
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.all(8.0),
                    //   child: Icon(CupertinoIcons.arrow_up_arrow_down_square_fill),
                    // )

                  ],


                );
              },);

            },),

            Container(height: 160,width: 250,
              child: Column(
                children: [

                  Text("Today  ==>    ${ipT!.todayday.day} / ${ipT!.todayday.month} / ${ipT!.todayday.year}"),
                  CupertinoButton(
                    child: Text("Date"),
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.systemPink,

                    onPressed: () {
                      showCupertinoModalPopup(

                        context: context, builder: (context) {
                        return Container(
                          height: 200,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            initialDateTime: ipF!.tday,
                            backgroundColor: CupertinoColors.white,
                            onDateTimeChanged: (value) {
                              DateTime temp = value ;
                              ipF!.updatedate(temp);
                            },
                          ),
                        );
                      },);
                    },

                  ),
                  SizedBox(height: 15,),
                  CupertinoButton(
                    child: Text("Date"),
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.systemPink,

                    onPressed: () {
                      showCupertinoDialog(



                        context: context, builder: (context) {
                        return CupertinoAlertDialog(content: Container(
                          height: 200,width: double.infinity,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            initialDateTime: ipF!.tday,
                            backgroundColor: CupertinoColors.white,
                            onDateTimeChanged: (value) {
                              DateTime temp = value ;
                              ipF!.updatedate(temp);
                            },
                          ),
                        ),);
                      },);
                    },

                  ),
                  Text("Modified ==>   ${ipT!.tday.day} / ${ipT!.tday.month} / ${ipT!.tday.year}"),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }


}
