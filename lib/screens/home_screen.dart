import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
import 'package:demo_flutter/screens/navigation_bar_item1.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex=0;

  /// Logic to be performed onTap.
  screenOptions(int index){
    switch(index){
      case 0:
        return navigationBarItem1(itemColor: AppColors.colorIndigo,);
      case 1:
        return navigationBarItem1(itemColor: AppColors.colorRed,);
      case 2:
        return navigationBarItem1(itemColor: AppColors.colorOrangeAccent,);
      case 3:
        return navigationBarItem1(itemColor: AppColors.colorBlue,);

      default:
        return Text(AppString.txtNoScreenFound);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.txtHomeScreen),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: screenOptions(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.colorWhite,
        // selectedFontSize: 30,
        selectedIconTheme: IconThemeData(size: 30),
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: AppColors.colorBlack,
        unselectedItemColor: AppColors.colorGrey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: "."
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_sharp),
            label: "."
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "."
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: "."
          )
        ],
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex=index;
          });
        },
      ),
    );
  }
}