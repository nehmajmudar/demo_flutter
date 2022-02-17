import 'package:flutter/material.dart';

class DeleteCustomAlert extends StatefulWidget {

  final String title;
  final String content;
  const DeleteCustomAlert({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  _DeleteCustomAlertState createState() => _DeleteCustomAlertState();
}

class _DeleteCustomAlertState extends State<DeleteCustomAlert> {

  var showThisAgain=false;

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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    value: showThisAgain,
                    onChanged: (value){
                      setState(() {
                        showThisAgain=value!;
                      });
                    }
                  ),
                SizedBox(
                  width: 10,
                ),
                Text("Do not show it anymore",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 15,
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
                      if(showThisAgain){
                        print("Checkbox was selected.");
                      }
                      else{
                        print("Checkbox wasn't selected.");
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
