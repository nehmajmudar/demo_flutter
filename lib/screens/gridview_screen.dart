import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter/ui/gridview_content.dart';

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
          GridviewContent(colorContainer: AppColors.colorBlue),
          GridviewContent(colorContainer: AppColors.colorGreen),
          GridviewContent(colorContainer: AppColors.colorBlue),
          GridviewContent(colorContainer: AppColors.colorGreen),
          GridviewContent(colorContainer: AppColors.colorBlue),
          GridviewContent(colorContainer: AppColors.colorGreen),
          GridviewContent(colorContainer: AppColors.colorBlue),
          GridviewContent(colorContainer: AppColors.colorGreen),
        ],
      ),
    );
  }
}
