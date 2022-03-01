import 'package:demo_flutter/res/app_strings.dart';
import 'package:flutter/material.dart';

class FollowUpScreen extends StatelessWidget {
  const FollowUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.txtFollowUp),
        centerTitle: true,
      ),
    );
  }
}
