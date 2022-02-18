import 'package:demo_flutter/res/colors.dart';
import 'package:demo_flutter/res/strings.dart';
import 'package:flutter/material.dart';

class SearchbarCustomAlert extends StatefulWidget {

  final String title;
  final String content;
  const SearchbarCustomAlert({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  _SearchbarCustomAlertState createState() => _SearchbarCustomAlertState();
}

class _SearchbarCustomAlertState extends State<SearchbarCustomAlert> {

  String radioGroupPosition=AppString.txtRadioGroupPosition;
  String radioTop=AppString.txtTop;
  String radioBottom=AppString.txtBottom;
  String txtWasSelected=AppString.txtWasSelected;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 237,
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${widget.title}",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),textAlign: TextAlign.left,),
            SizedBox(
              height: 10,
            ),
            Text("${widget.content}",style: TextStyle(color: AppColors.colorGrey),),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio(
                  value: radioTop,
                  groupValue: radioGroupPosition,
                  onChanged: (value){
                    radioGroupPosition=radioTop;
                    setState(() {});
                  }
                ),
                Text(radioTop,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Row(
              children: [
                Radio(
                    value: radioBottom,
                    groupValue: radioGroupPosition,
                    onChanged: (value){
                      radioGroupPosition=radioBottom;
                      setState(() {});
                    }
                ),
                Text(radioBottom,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Center(
              child: GestureDetector(
                child: Container(
                  width: 100,
                  child: Text(AppString.txtConfirm,style: TextStyle(color: AppColors.colorWhite)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: AppColors.colorBlue,
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pop();
                  setState(() {
                    print("$radioGroupPosition $txtWasSelected");
                  });
                },
              ),
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
