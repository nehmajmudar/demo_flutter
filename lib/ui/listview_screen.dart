import 'package:demo_flutter/res/colors.dart';
import 'package:demo_flutter/res/strings.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorBlack,
        title: Text(AppString.txtListView),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Container(
            color: AppColors.colorGold,
            child: Text(AppString.txtGold,),
            alignment: Alignment.center,
            height: 70,
          ),
          Container(
            color: AppColors.colorSilver,
            child: Text(AppString.txtSilver,),
            alignment: Alignment.center,
            height: 70,
          ),
          Container(
            color: AppColors.colorBronze,
            child: Text(AppString.txtBronze,),
            alignment: Alignment.center,
            height: 70,
          ),
          Container(
            color: AppColors.colorMaroon,
            child: Text(AppString.txtMaroon,),
            alignment: Alignment.center,
            height: 70,
          ),
          Container(
            color: AppColors.colorTurquoise,
            child: Text(AppString.txtTurquoise,),
            alignment: Alignment.center,
            height: 70,
          ),
          Container(
            color: AppColors.colorMagenta,
            child: Text(AppString.txtMagenta,),
            alignment: Alignment.center,
            height: 70,
          ),
        ],
      )
    );
  }
}
