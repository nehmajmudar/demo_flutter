import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => DropDownDemo(),
      },
    );
  }
}

class DropDownDemo extends StatefulWidget {
  const DropDownDemo({Key? key}) : super(key: key);

  @override
  _DropDownDemoState createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {

  // var _state=["Gujarat, Maharashtra, Andhra Pradesh, Kerala"];
  var _currentItem="Gujarat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Dropdown menu"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                // items: _state.map((String dropDownItem){
                //   return DropdownMenuItem(
                //     child: Text(dropDownItem),
                //     value: dropDownItem,
                //   );
                // }).toList(),
                items: [
                  DropdownMenuItem(
                    child: Text("Gujarat"),
                    value: "Gujarat",
                  ),
                  DropdownMenuItem(
                    child: Text("Maharashtra"),
                    value: "Maharashtra",
                  ),
                  DropdownMenuItem(
                    child: Text("Andhra Pradesh"),
                    value: "Andhra Pradesh",
                  ),
                  DropdownMenuItem(
                    child: Text("Kerala"),
                    value: "Kerala",
                  ),
                ],
                onChanged: (String? newValueSelected){
                  setState(() {
                    this._currentItem=newValueSelected!;
                  });
                },
                value: _currentItem,
              ),
              Text("Your selected state is $_currentItem",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
            ],
          ),
        ),
      ),
    );
  }
}
