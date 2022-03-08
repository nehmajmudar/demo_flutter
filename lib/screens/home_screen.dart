import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.txtLoginForm),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: AppString.txtName,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: AppString.txtEmailId,
            ),
          ),
          GestureDetector(
            child: Container(
              child: Text(AppString.txtSubmit),
            ),
            onTap: (){},
          )
        ],
      ),
    );
  }
}