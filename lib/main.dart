import 'package:demo_flutter/CustomDialogues/delete_custom_dialogue.dart';
import 'package:demo_flutter/CustomDialogues/inkwell_custom_dialogue.dart';
import 'package:demo_flutter/CustomDialogues/privacyInfo_custom_dialogue.dart';
import 'package:demo_flutter/CustomDialogues/searchbar_custom_dialogue.dart';
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
        '/': (context) => LoginButtons(),
      },
    );
  }
}

class LoginButtons extends StatefulWidget {
  const LoginButtons({Key? key}) : super(key: key);

  @override
  _LoginButtonsState createState() => _LoginButtonsState();
}

class _LoginButtonsState extends State<LoginButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Buttons with alert dialogues",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      backgroundColor: Colors.orangeAccent,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 40.0,bottom: 40.0),
                    width: 100,
                    alignment: Alignment.center,
                    child: Text("Delete content",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                  onTap: (){
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context){
                          return DeleteCustomAlert(title: "Delete content", content: "Are you sure to remove the content? You can access this file for 7 days in your trash.");
                        }
                    );
                  // setState(() {});
                }
              ),
              GestureDetector(
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(bottom: 40.0),
                    alignment: Alignment.center,
                    child: Text("Privacy \nconfirmation",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                  onTap: (){
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context){
                          return PrivacyCustomAlert(title: "Privacy info", content: "The backups with this functionality may contain some sensitive data.");
                        }
                    );
                    setState(() {});
                  }
              ),
              GestureDetector(
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(bottom: 40.0),
                    alignment: Alignment.center,
                    child: Text("Search bar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                  onTap: (){
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context){
                          return SearchbarCustomAlert(title: "Search bar", content: "Select the search bar position. The page will continue to appear from the same side.");
                        }
                    );
                    setState(() {});
                  }
              ),
              InkWell(
                  splashColor: Colors.green,
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    child: Text("InkWell Quiz",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                  onTap: (){
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context){
                          return InkwellCustomAlert(title: "Whoa! Take it easy", content: "You can only post 1 quiz in 2 minutes.");
                        }
                    );
                  },
                  onDoubleTap: (){
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context){
                          return InkwellCustomAlert(title: "Do you want to finish the quiz?", content: "You did it!");
                        }
                    );
                  },
                  onLongPress: (){
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context){
                          return InkwellCustomAlert(title: "Oops! The quiz wasn't created", content: "You can try again.");
                      }
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
