import 'package:demo_flutter/res/colors.dart';
import 'package:demo_flutter/res/strings.dart';
import 'package:flutter/material.dart';

class GridviewBuilderScreen extends StatefulWidget {
  const GridviewBuilderScreen({Key? key}) : super(key: key);

  @override
  _GridviewBuilderScreenState createState() => _GridviewBuilderScreenState();
}

class _GridviewBuilderScreenState extends State<GridviewBuilderScreen> {
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
      body: GridView.builder(
        padding: EdgeInsets.all(5),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5
        ),
        itemCount: 8,
        itemBuilder: (BuildContext context,index){
          return Container(
            child: Text(AppString.txtTextHere,style: TextStyle(fontSize: 20.0),),
            color: AppColors.colorOrangeAccent,
            alignment: Alignment.center,
          );
        },
      ),
    );
  }
}
