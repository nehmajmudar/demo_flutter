import 'package:demo_flutter/res/app_colors.dart';
import 'package:flutter/material.dart';

class navigationBarItem1 extends StatelessWidget {

  final Color itemColor;
  const navigationBarItem1({Key? key,required this.itemColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: itemColor,
    );
  }
}
