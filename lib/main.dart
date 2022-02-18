import 'package:demo_flutter/ui/home_screen.dart';
import 'package:demo_flutter/ui/listview_builder_screen.dart';
import 'package:demo_flutter/ui/listview_screen.dart';
import 'package:demo_flutter/ui/separated_listview_screen.dart';
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
        '/': (context) => HomeScreen(),
        '/listview_screen': (context) => ListviewScreen(),
        '/listview_builder_screen': (context) => ListviewBuilderScreen(),
        '/separated_listview_screen': (context) => SeparatedListviewScreen()
      },
    );
  }
}

