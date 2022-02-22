import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
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
        title: Text(AppString.txtHomeScreen),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            HomeScreenContent(colorContainer: AppColors.colorRed, stringContainer: AppString.txtGridview),
            HomeScreenContent(colorContainer: AppColors.colorBlue, stringContainer: AppString.txtGridviewBuilder),
            HomeScreenContent(colorContainer: AppColors.colorGreen, stringContainer: AppString.txtGridviewExtent),
          ],
        ),
      ),
    );
  }
}


class HomeScreenContent extends StatelessWidget {

  final Color colorContainer;
  final String stringContainer;
  const HomeScreenContent({Key? key,required this.colorContainer,required this.stringContainer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Text(stringContainer,style: TextStyle(color: colorContainer,fontSize: 20),),
        margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
      ),
      onTap: (){
        if(stringContainer==AppString.txtGridview){
          Navigator.pushNamed(context, '/gridview_screen');
        }
        if(stringContainer==AppString.txtGridviewBuilder){
          Navigator.pushNamed(context, '/gridview_builder_screen');
        }
        if(stringContainer==AppString.txtGridviewExtent){
          Navigator.pushNamed(context, '/gridview_extent_screen');
        }
      },
    );
  }
}