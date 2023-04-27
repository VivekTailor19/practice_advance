import 'package:flutter/material.dart';
import 'package:practice/drawer_n_stepper/stepper_provider.dart';
import 'package:provider/provider.dart';

class Gmail_UI extends StatefulWidget {
  const Gmail_UI({Key? key}) : super(key: key);

  @override
  State<Gmail_UI> createState() => _Gmail_UIState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _Gmail_UIState extends State<Gmail_UI> {

  StepperProvider? spF;
  StepperProvider? spT;

  @override
  Widget build(BuildContext context) {

    spF = Provider.of<StepperProvider>(context,listen:false);
    spT = Provider.of<StepperProvider>(context,listen:true);

    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.mail),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: Text("Gmail_Pro"),),


        drawer: Drawer(

          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              CircleAvatar(radius: 50,backgroundImage: NetworkImage("https://www.happierhuman.com/wp-content/uploads/2022/07/glass-half-full-type-persons-lessons-learned.jpg"),),
              SizedBox(height: 20),
              ListTile(leading: Icon(Icons.photo_library_outlined),title: Text("All inboxes"),),
              ListTile(leading: Icon(Icons.image_outlined),title: Text("Primary"),),
              ListTile(leading: Icon(Icons.label),title: Text("Promotions"),),
              ListTile(leading: Icon(Icons.group),title: Text("Social"),),
            ],
          ),
        ),


        body: Stepper(
          type: StepperType.vertical,



          onStepContinue: () {
            spF!.stepcontinue();



          },
          onStepCancel: () {
            spF!.stepcancel();


          },
          currentStep: spT!.currentstep,



          steps: [
            Step(
              state: StepState.complete,
                isActive: true,
                title: Text("Registration"),
                content: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Name",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Phone No",
                      ),
                    ),

                  ],
                )),
            Step(
                title: Text("Personal Details"),
                content: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Date of Birth",
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email Id",
                      ),
                    ),

                  ],
                )),
            Step(
                title: Text("Bank Details"),
                content: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Bank Name",
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Account Number",
                      ),
                    ),


                  ],
                )),
            Step(
                title: Text("Confirmation"),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ElevatedButton(onPressed: () {
                    //   spF!.confirm();
                    // }, child: Text("Confirm")),
                    // (spT!.done == true) ? Text("All information is collected...") : Text(""),

                    Text("All information is collected...")
                  ],
                )),

          ],
        ),
      ),
    );
  }
}
