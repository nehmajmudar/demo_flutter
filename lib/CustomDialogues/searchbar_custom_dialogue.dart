import 'package:flutter/material.dart';

class SearchbarCustomAlert extends StatefulWidget {

  final String title;
  final String content;
  const SearchbarCustomAlert({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  _SearchbarCustomAlertState createState() => _SearchbarCustomAlertState();
}

class _SearchbarCustomAlertState extends State<SearchbarCustomAlert> {

  String groupPosition="Position";
  String top="Top";
  String bottom="Bottom";

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
            Text("${widget.content}",style: TextStyle(color: Colors.grey),),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Radio(
                  value: top,
                  groupValue: groupPosition,
                  onChanged: (value){
                    groupPosition=top;
                    setState(() {});
                  }
                ),
                Text("Top",style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Row(
              children: [
                Radio(
                    value: bottom,
                    groupValue: groupPosition,
                    onChanged: (value){
                      groupPosition=bottom;
                      setState(() {});
                    }
                ),
                Text("Bottom",style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Center(
              child: GestureDetector(
                child: Container(
                  width: 100,
                  child: Text("Confirm",style: TextStyle(color: Colors.white)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pop();
                  setState(() {
                    print("$groupPosition was selected");
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
