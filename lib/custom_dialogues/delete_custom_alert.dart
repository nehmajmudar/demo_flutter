import 'package:demo_flutter/res/colors.dart';
import 'package:demo_flutter/res/strings.dart';
import 'package:flutter/material.dart';

class DeleteCustomAlert extends StatefulWidget {

  final String title;
  final String content;
  const DeleteCustomAlert({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  _DeleteCustomAlertState createState() => _DeleteCustomAlertState();
}

class _DeleteCustomAlertState extends State<DeleteCustomAlert> {

  var checkboxPreferenceToShow=false;

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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    value: checkboxPreferenceToShow,
                    onChanged: (value){
                      setState(() {
                        checkboxPreferenceToShow=value!;
                      });
                    }
                  ),
                SizedBox(
                  width: 10,
                ),
                Text(AppString.txtDoNotShowItAnymore,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 15,
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
                      if(checkboxPreferenceToShow){
                        print(AppString.txtCheckboxWasSelected);
                      }
                      else{
                        print(AppString.txtCheckboxWasNotSelected);
                      }
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
