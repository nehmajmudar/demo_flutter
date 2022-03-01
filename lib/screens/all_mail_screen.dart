import 'package:demo_flutter/res/app_strings.dart';
import 'package:flutter/material.dart';

class AllMailScreen extends StatelessWidget {
  const AllMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.txtAllMail),
        centerTitle: true,
      ),
    );
  }
}
