import 'package:demo_flutter/Screens/ticket_confirmation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SignUpPage(),
        '/ticket_confirmation_screen': (context) => TicketDisplay()
      },
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xffFF2b2c31),
        leading: Icon(Icons.arrow_back),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15.0,top: 8,bottom: 25.0),
              width: MediaQuery.of(context).size.width,
              color: Color(0xffFF2b2c31),
              child: Text('Sign Up', style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                      alignment: Alignment.center,
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 1.5,horizontal: 47.0),
                    ),
                    onPressed: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 15.0),
                      child: Text('Email',style: TextStyle(color: Colors.white),))
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      alignment: Alignment.center,
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 1.5,horizontal: 47.0),
                    ),
                    onPressed: (){},
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 15.0),
                      child: Text('Phone Number',style: TextStyle(color: Colors.white),))
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0,right: 15.0,top: 10.0,bottom: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white24),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                  ),
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(color: Colors.white24),
                  fillColor: Color(0xffFF2b2c31),
                ),
              ),
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'By continuing you agree to the ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                      ),
                    ),
                    TextSpan(
                      text: 'Term of Service ',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xffFFfeb648)
                      ),
                      recognizer: TapGestureRecognizer()
                    ),
                    TextSpan(
                      text: 'and ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xffFFfeb648)
                      ),
                      recognizer: TapGestureRecognizer()
                    ),
                  ]
                )
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ticket_confirmation_screen');
              },
              child: Container(
                margin: EdgeInsets.only(left: 8.0,right: 8.0,bottom: 8.5,top: 20.0),
                height: 50,
                alignment: Alignment.center,
                child: Text('Continue',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                decoration: BoxDecoration(
                  color: Color(0xffFFfeb648),
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text('or',style: TextStyle(color: Colors.white,fontSize: 13),),
              color: Color(0xffFF2b2c31),
            ),
            TextButton(
              onPressed: () {  },
              child: Container(
                margin: EdgeInsets.only(left: 8.0,right: 8.0,top: 8.5),
                height: 50,
                alignment: Alignment.center,
                child: Text('Continue with Apple',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
            // SizedBox(
            //   // width: MediaQuery.of(context).size.width,
            //   // height: 7.0,
            // ),
            TextButton(
              onPressed: () {  },
              child: Container(
                margin: EdgeInsets.only(left: 8.0,right: 8.0),
                height: 50,
                alignment: Alignment.center,
                child: Text('Continue with Facebook',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                decoration: BoxDecoration(
                  color: Color(0xffFF4267B2),
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   height: 7.0,
            // ),
            TextButton(
              onPressed: () {  },
              child: Container(
                margin: EdgeInsets.only(left: 8.0,right: 8.0,bottom: 23.5),
                height: 50,
                alignment: Alignment.center,
                child: Text('Continue with Google',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                decoration: BoxDecoration(
                  color: Color(0xffFF497ce5),
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(left: 15.0,right: 15.0),
            //   // height: 60,
            //   alignment: Alignment.center,
            //   child: Text('or Login or continue as guest',style: TextStyle(color: Colors.white,fontSize: 13),),
            //   color: Color(0xffFF2b2c31),
            // ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Or ',
                      style: TextStyle(
                        color: Colors.white,
                          fontSize: 13
                      ),
                    ),
                    TextSpan(
                      text: 'Login or continue as guest',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffFFfeb648)
                      ),
                      recognizer: TapGestureRecognizer()
                    ),
                  ]
                )
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffFF2b2c31),
    );
  }
}


