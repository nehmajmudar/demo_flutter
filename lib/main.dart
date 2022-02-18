import 'package:demo_flutter/screens/demo_buttons.dart';
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
        '/': (context) => DemoButtons(),
      },
    );
  }
}

