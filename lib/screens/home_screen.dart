import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  DateTime currentDate=DateTime.now();
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
            ElevatedButton(
              onPressed: (){
                _datePicker(context);
              },
              child: Text(AppString.txtChooseDate)
            ),
            Text("${currentDate.day}/${currentDate.month}/${currentDate.year}")
          ],
        ),
      ),
    );
  }

  _datePicker(BuildContext context) async {
    final DateTime? selected=await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime.now()
    );
    if(selected!=null && selected!=currentDate){
      setState(() {
        currentDate=selected;
      });
    }
  }
}