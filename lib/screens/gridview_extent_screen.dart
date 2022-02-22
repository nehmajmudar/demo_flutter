import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
import 'package:demo_flutter/ui/gridview_content.dart';
import 'package:flutter/material.dart';

class GridviewExtentScreen extends StatefulWidget {
  const GridviewExtentScreen({Key? key}) : super(key: key);

  @override
  _GridviewExtentScreenState createState() => _GridviewExtentScreenState();
}

class _GridviewExtentScreenState extends State<GridviewExtentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorBlack,
        title: Text(AppString.txtGridviewExtent),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)
        ),
      ),
      body: GridView.extent(
        padding: EdgeInsets.all(5),
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        maxCrossAxisExtent: 300,
        children: [
          GridviewContent(colorContainer: AppColors.colorBlue),
          GridviewContent(colorContainer: AppColors.colorGreen),
          GridviewContent(colorContainer: AppColors.colorBlue),
          GridviewContent(colorContainer: AppColors.colorGreen),
          GridviewContent(colorContainer: AppColors.colorBlue),
          GridviewContent(colorContainer: AppColors.colorGreen),
          GridviewContent(colorContainer: AppColors.colorBlue),
          GridviewContent(colorContainer: AppColors.colorGreen),
        ],
      )
    );
  }
}
