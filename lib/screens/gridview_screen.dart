import 'package:demo_flutter/res/colors.dart';
import 'package:demo_flutter/res/strings.dart';
import 'package:flutter/material.dart';

class GridviewScreen extends StatefulWidget {
  const GridviewScreen({Key? key}) : super(key: key);

  @override
  _GridviewScreenState createState() => _GridviewScreenState();
}

class _GridviewScreenState extends State<GridviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorBlack,
        title: Text(AppString.txtGridview),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)
        ),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(5),
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: [
          Container(
            child: Text(AppString.txtTextHere,textAlign: TextAlign.center,),
            color: AppColors.colorBlue,
          ),
          Container(
            child: Text(AppString.txtTextHere,textAlign: TextAlign.center,),
            color: AppColors.colorGreen,
          ),
          Container(
            child: Text(AppString.txtTextHere,textAlign: TextAlign.center,),
            color: AppColors.colorBlue,
          ),
          Container(
            child: Text(AppString.txtTextHere,textAlign: TextAlign.center,),
            color: AppColors.colorGreen,
          ),
          Container(
            child: Text(AppString.txtTextHere,textAlign: TextAlign.center,),
            color: AppColors.colorBlue,
          ),
          Container(
            child: Text(AppString.txtTextHere,textAlign: TextAlign.center,),
            color: AppColors.colorGreen,
          ),
          Container(
            child: Text(AppString.txtTextHere,textAlign: TextAlign.center,),
            color: AppColors.colorBlue,
          ),
          Container(
            child: Text(AppString.txtTextHere,textAlign: TextAlign.center,),
            color: AppColors.colorGreen,
          ),
        ],
      ),
    );
  }
}
