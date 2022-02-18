import 'package:demo_flutter/res/colors.dart';
import 'package:demo_flutter/res/strings.dart';
import 'package:flutter/material.dart';

class PrivacyCustomAlert extends StatefulWidget {

  final String title;
  final String content;
  const PrivacyCustomAlert({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  _PrivacyCustomAlertState createState() => _PrivacyCustomAlertState();
}

class _PrivacyCustomAlertState extends State<PrivacyCustomAlert> {

  var dropdownOptionsChoices=AppString.txtDropDownOptionsChoices;
  var dropdownCurrentOption=AppString.txtDropDownCurrentOption;
  String txtWasSelected=AppString.txtWasSelected;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 225,
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text("${widget.title}",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),textAlign: TextAlign.left,),
            SizedBox(
              height: 10,
            ),
            Text("${widget.content}",style: TextStyle(color: AppColors.colorGrey),),
            Container(
              decoration: BoxDecoration(
                color: AppColors.colorGrey300,
                borderRadius: BorderRadius.circular(5.0)
              ),
              padding: EdgeInsets.only(left: 15.0,right: 30.0),
              margin: EdgeInsets.only(bottom: 25.0,top: 10.0),
              child: DropdownButton(
                isExpanded: true,
                dropdownColor: AppColors.colorGrey300,
                items: dropdownOptionsChoices.map((String dropDownItem){
                  return DropdownMenuItem(
                    child: Text(dropDownItem,style: TextStyle(fontWeight: FontWeight.bold),),
                    value: dropDownItem
                  );
                }).toList(),
                onChanged: (String? newValueSelected){
                    setState(() {
                      this.dropdownCurrentOption=newValueSelected!;
                    });
                },
                value: dropdownCurrentOption,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Container(
                    child: Text(AppString.txtCancel,style: TextStyle(color: AppColors.colorBlack)),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
                    decoration: BoxDecoration(
                        color: AppColors.colorGrey300,
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                ),
                GestureDetector(
                  child: Container(
                    child: Text(AppString.txtConfirm,style: TextStyle(color: AppColors.colorWhite)),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
                    decoration: BoxDecoration(
                        color: AppColors.colorBlue,
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context).pop();
                    setState(() {
                      print("$dropdownCurrentOption $txtWasSelected");
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)
      ),
      elevation: 0,
    );
  }
}
