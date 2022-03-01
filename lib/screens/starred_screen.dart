import 'package:demo_flutter/res/app_strings.dart';
import 'package:flutter/material.dart';

class StarredScreen extends StatelessWidget {
  const StarredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.txtStarred),
        centerTitle: true,
      ),
    );
  }
}
