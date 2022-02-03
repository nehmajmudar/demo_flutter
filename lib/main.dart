import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is th00e root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Instagram", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: Icon(Icons.arrow_back_ios_rounded),
          elevation: 0,
          actions: [
            Icon(Icons.arrow_forward_ios_rounded, size: 24.0)
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          width: MediaQuery.of(context).size.width,
          // color: Colors.pinkAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    margin: EdgeInsets.only(left: 10.0),
                    color: Colors.black87,
                    child: Text("Thumbnail1", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.5))
                  ),
                  Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.black87,
                      child: Text("Thumbnail5", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.5))
                  ),
                  Container(
                      height: 100.0,
                      width: 100.0,
                      margin: EdgeInsets.only(right: 10.0),
                      color: Colors.black87,
                      child: Text("Thumbnail9", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.5))
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 100.0,
                      width: 100.0,
                      margin: EdgeInsets.only(left: 10.0),
                      color: Colors.black87,
                      child: Text("Thumbnail2", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.5,))
                  ),
                  Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.black87,
                      child: Text("Thumbnail6", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.5))
                  ),
                  Container(
                      height: 100.0,
                      width: 100.0,
                      margin: EdgeInsets.only(right: 10.0),
                      color: Colors.black87,
                      child: Text("Thumbnail10", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.5))
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 100.0,
                      width: 100.0,
                      margin: EdgeInsets.only(left: 10.0),
                      color: Colors.black87,
                      child: Text("Thumbnail3", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.5))
                  ),
                  Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.black87,
                      child: Text("Thumbnail7", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.5))
                  ),
                  Container(
                      height: 100.0,
                      width: 100.0,
                      margin: EdgeInsets.only(right: 10.0),
                      color: Colors.black87,
                      child: Text("Thumbnail11", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.5))
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 100.0,
                      width: 100.0,
                      margin: EdgeInsets.only(left: 10.0),
                      color: Colors.black87,
                      child: Text("Thumbnail4", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 2.0))
                  ),
                  Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.black87,
                      child: Text("Thumbnail8", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 2.0))
                  ),
                  Container(
                      height: 100.0,
                      width: 100.0,
                      margin: EdgeInsets.only(right: 10.0),
                      color: Colors.black87,
                      child: Text("Thumbnail12",overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 2.0))
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white70
    );
  }
}