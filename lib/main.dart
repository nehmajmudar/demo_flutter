import 'package:demo_flutter/screens/gridview_builder_screen.dart';
import 'package:demo_flutter/screens/gridview_extent_screen.dart';
import 'package:demo_flutter/screens/gridview_screen.dart';
import 'package:demo_flutter/screens/home_screen.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/gridview_screen': (context) => GridviewScreen(),
        '/gridview_builder_screen': (context) => GridviewBuilderScreen(),
        '/gridview_extent_screen': (context) => GridviewExtentScreen()
      },
    );
  }
}

