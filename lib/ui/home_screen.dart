import 'package:demo_flutter/res/colors.dart';
import 'package:demo_flutter/res/strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorBlack,
        title: Text(AppString.txtListviewButtons),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                child: Text(AppString.txtListView,style: TextStyle(color: AppColors.colorRed,fontSize: 20),),
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              ),
              onTap: (){
                Navigator.pushNamed(context, '/listview_screen');
              },
            ),
            GestureDetector(
              child: Container(
                child: Text(AppString.txtListViewBuilder,style: TextStyle(color: AppColors.colorGreen,fontSize: 20),),
                margin: EdgeInsets.only(bottom: 20.0),
              ),
              onTap: (){
                Navigator.pushNamed(context, '/listview_builder_screen');
              },
            ),
            GestureDetector(
              child: Container(
                child: Text(AppString.txtSeperatedListView,style: TextStyle(color: AppColors.colorBlue,fontSize: 20),),
                margin: EdgeInsets.only(bottom: 20.0),
              ),
              onTap: (){
                Navigator.pushNamed(context, '/separated_listview_screen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
