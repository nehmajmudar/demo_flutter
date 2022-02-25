import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  DateTime selectedDate=DateTime.now();
  TimeOfDay selectedTime=TimeOfDay.now();
  DateTimeRange selectedDatesRange=DateTimeRange(
    start: DateTime.now(),
    end: DateTime(2022,4,1),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorBlack,
        title: Text(AppString.txtHomeScreen),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  _datePicker(context);
                },
                child: Text(AppString.txtChooseDate)
              ),
              Text("${selectedDate.day}/${selectedDate.month}/${selectedDate.year}"),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  _timePicker(context);
                },
                child: Text(AppString.txtChooseTime)
              ),
              Text("${selectedTime.hour}:${selectedTime.minute}"),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  _dateRangePicker(context);
                },
                child: Text(AppString.txtChooseDatesRange)
              ),
              Text("From ${selectedDatesRange.start.day}/${selectedDatesRange.start.month}/${selectedDatesRange.start.year}"),
              Text("To ${selectedDatesRange.end.day}/${selectedDatesRange.end.month}/${selectedDatesRange.end.year}"),
            ],
          ),
        ),
      ),
    );
  }

  ///The method for Date Picker
  _datePicker(BuildContext context) async {
    final DateTime? selected=await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime.now()
    );
    if(selected!=null && selected!=selectedDate){
      setState(() {
        selectedDate=selected;
      });
    }
  }

  ///The method for Time picker
  _timePicker(BuildContext context) async{
    final TimeOfDay? timeOfDay=await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial
    );
    if(timeOfDay!=null && timeOfDay!=selectedTime){
      setState(() {
        selectedTime=timeOfDay;
      });
    }
  }

  ///The method for selecting range of dates.
  _dateRangePicker(BuildContext context) async{
    final DateTimeRange? newSelectedDatesRange=await showDateRangePicker(
      context: context,
      initialDateRange: selectedDatesRange,
      firstDate: selectedDatesRange.start,
      lastDate: selectedDatesRange.end
    );
    if(newSelectedDatesRange!=null && newSelectedDatesRange!=selectedDatesRange){
      setState(() {
        selectedDatesRange=newSelectedDatesRange;
      });
    }
  }
}