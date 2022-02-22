import 'package:demo_flutter/res/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class GridviewContent extends StatelessWidget {

  final Color colorContainer;
  const GridviewContent({Key? key,required this.colorContainer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(AppString.txtTextHere),
      color: colorContainer,
      alignment: Alignment.center,
    );
  }
}
