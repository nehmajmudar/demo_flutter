import 'package:demo_flutter/res/colors.dart';
import 'package:demo_flutter/res/strings.dart';
import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatelessWidget {
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  static final List<Color> colorCodes=[AppColors.colorGold,AppColors.colorSilver,AppColors.colorBronze,AppColors.colorMaroon,AppColors.colorTurquoise,AppColors.colorMagenta];
  static final List<String> colorNames=[AppString.txtGold,AppString.txtSilver,AppString.txtBronze,AppString.txtMaroon,AppString.txtTurquoise,AppString.txtMagenta];

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
        body: ListView.builder(
          padding: EdgeInsets.all(10.0),
          itemCount: colorNames.length,
          itemBuilder: (BuildContext context,int index){
            return Container(
              height: 70,
              alignment: Alignment.center,
              color: colorCodes[index],
              child: Text("${colorNames[index]}"),
            );
          }
        )
    );
  }
}
