import 'package:demo_flutter/res/colors.dart';
import 'package:demo_flutter/res/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkwellCustomAlert extends StatefulWidget {

  final String title;
  final String content;
  const InkwellCustomAlert({Key? key,required this.title, required this.content}) : super(key: key);

  @override
  _InkwellCustomAlertState createState() => _InkwellCustomAlertState();
}

class _InkwellCustomAlertState extends State<InkwellCustomAlert> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 135,
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text("${widget.title}",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),textAlign: TextAlign.center,),
            SizedBox(
              height: 10,
            ),
            Text("${widget.content}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            Center(
              child: GestureDetector(
                child: Container(
                  width: 100,
                  child: Text(AppString.txtGotIt,style: TextStyle(color: AppColors.colorWhite)),
                  margin: EdgeInsets.only(top: 15.0),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: AppColors.colorBlue,
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(15.0)
      ),
    );
  }
}