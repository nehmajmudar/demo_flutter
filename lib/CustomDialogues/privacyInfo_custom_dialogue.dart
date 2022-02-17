import 'package:flutter/material.dart';

class PrivacyCustomAlert extends StatefulWidget {

  final String title;
  final String content;
  const PrivacyCustomAlert({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  _PrivacyCustomAlertState createState() => _PrivacyCustomAlertState();
}

class _PrivacyCustomAlertState extends State<PrivacyCustomAlert> {

  var _optionsChoices=["Automatic","Always","Never"];
  var _currentOption="Automatic";

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 225,
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${widget.title}",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),textAlign: TextAlign.left,),
            SizedBox(
              height: 10,
            ),
            Text("${widget.content}",style: TextStyle(color: Colors.grey),),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5.0)
              ),
              padding: EdgeInsets.only(left: 15.0,right: 30.0),
              margin: EdgeInsets.only(bottom: 25.0,top: 10.0),
              child: DropdownButton(
                isExpanded: true,
                dropdownColor: Colors.grey[300],
                items: _optionsChoices.map((String dropDownItem){
                  return DropdownMenuItem(
                    child: Text(dropDownItem,style: TextStyle(fontWeight: FontWeight.bold),),
                    value: dropDownItem
                  );
                }).toList(),
                onChanged: (String? newValueSelected){
                    setState(() {
                      this._currentOption=newValueSelected!;
                    });
                },
                value: _currentOption,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    child: Text("Cancel",style: TextStyle(color: Colors.black)),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 50.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context).pop();
                    setState(() {
                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    child: Text("Confirm",style: TextStyle(color: Colors.white)),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 50.0),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context).pop();
                    setState(() {
                      print("$_currentOption was selected");
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
