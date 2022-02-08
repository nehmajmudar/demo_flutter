import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
        // primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  ScrollController _controller=ScrollController();

  String groupGender='Gender';
  String male='Male';
  String female='Female';
  String others='Others';

  String groupPrefix='Prefs';
  String mr='Mr.';
  String ms='Ms.';
  String otherPrefs='Others';

  bool one=false;
  bool two=false;
  bool three=false;
  bool four=false;
  bool five=false;
  bool evenOdd=false;

  bool toggle=false;
  String url1='https://images.unsplash.com/photo-1579353977828-2a4eab540b9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2FtcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80';
  String url2='https://www.watermark-image.com/watermarking-examples/Resized/tsr-watermark-image-example-pixabay.com-en-sky-sunset-mountain-clouds-cloud-56308.jpg';
  String url='https://images.unsplash.com/photo-1579353977828-2a4eab540b9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2FtcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Task"),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
          color: Colors.pinkAccent,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Male", style: TextStyle(fontSize: 25.0,),),
                    ),
                    Radio(value: male, groupValue: groupGender,
                        onChanged: (value) {
                          groupGender=male;
                          setState(() {});
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Female", style: TextStyle(fontSize: 25.0,)),
                    ),
                    Radio(value: female, groupValue: groupGender,
                        onChanged: (value) {
                          groupGender=female;
                          setState(() {});
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Others", style: TextStyle(fontSize: 25.0,)),
                    ),
                    Radio(value: others, groupValue: groupGender,
                        onChanged: (value) {
                          groupGender=others;
                          setState(() {});
                        })
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Mr.", style: TextStyle(fontSize: 25.0,)),
                    ),
                    Radio(value: mr, groupValue: groupPrefix,
                        onChanged: (value) {
                          groupPrefix=mr;
                          setState(() {});
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Ms.", style: TextStyle(fontSize: 25.0,)),
                    ),
                    Radio(value: ms, groupValue: groupPrefix,
                        onChanged: (value) {
                          groupPrefix=ms;
                          setState(() {});
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Others", style: TextStyle(fontSize: 25.0,)),
                    ),
                    Radio(value: otherPrefs, groupValue: groupPrefix,
                        onChanged: (value) {
                          groupPrefix=otherPrefs;
                          setState(() {});
                        })
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Even/Odd", style: TextStyle(fontSize: 25.0,)),
                    ),
                    Checkbox(value: evenOdd,
                        onChanged: (value) {
                          if(value!=null){
                            if(value){
                              one = three = five = true;
                              two = four = false;
                            }
                            else{
                              one = three = five = false;
                              two = four = true;
                            }
                            evenOdd=value;
                            setState(() {});
                          }
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Odd", style: TextStyle(fontSize: 25.0,)),
                    ),
                    Checkbox(value: one,
                        onChanged: (value) {
                          if(value!=null){
                            one=value;
                            setState(() {});
                          }
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Even", style: TextStyle(fontSize: 25.0,)),
                    ),
                    Checkbox(value: two,
                        onChanged: (value) {
                          if(value!=null){
                            two=value;
                            setState(() {});
                          }
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Odd", style: TextStyle(fontSize: 25.0,)),
                    ),
                    Checkbox(value: three,
                        onChanged: (value) {
                          if(value!=null){
                            three=value;
                            setState(() {});
                          }
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Even", style: TextStyle(fontSize: 25.0,)),
                    ),
                    Checkbox(value: four,
                        onChanged: (value) {
                          if(value!=null){
                            four=value;
                            setState(() {});
                          }
                        })
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Odd", style: TextStyle(fontSize: 25.0,)),
                    ),
                    Checkbox(value: five,
                        onChanged: (value) {
                          if(value!=null){
                            five=value;
                            setState(() {});
                          }
                        })
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                // Container(
                //   child: Image.network(url1),
                // ),
                Image.network(url),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      child: Text("Toggle", style: TextStyle(fontSize: 25.0,)),
                    ),
                    // Container(
                    //   child: Image.network(url1);
                    // ),
                    Checkbox(value: toggle,
                        onChanged: (value) {
                          if(value!=null){
                            if(value){
                              url=url1;
                            }
                            else{
                              url=url2;
                            }
                            toggle=value;
                            setState(() {});
                          }
                        })
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
