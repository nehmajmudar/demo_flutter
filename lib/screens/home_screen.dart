import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
import 'package:demo_flutter/screens/selection_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late bool checkboxValue;
  String msgToDisplay="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorBlack,
        title: Text(AppString.txtHomeScreen),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                width: 100,
                height: 100,
                color: AppColors.colorGrey300,
                alignment: Alignment.center,
                child: Text(AppString.txtPressHere),
                margin: EdgeInsets.only(bottom: 20.0),
              ),
              onTap: (){
                _returnValueFromSelectionScreen(context);
              },
            ),
            Visibility(
              visible: true,
              child: Text(msgToDisplay)
            ),
          ],
        ),
      )
    );
  }


  ///Method to push the next screen and wait until the data is received from SelectionScreen()
  void _returnValueFromSelectionScreen(BuildContext context)async{
    final result=await Navigator.push(context,
        MaterialPageRoute(builder: (context) =>SelectionScreen())
    );
    setState(() {
      checkboxValue=result;
      msgToDisplay=checkboxValue?AppString.txtCheckboxWasSelected:AppString.txtCheckboxWasNotSelected;
    });
  }
}


