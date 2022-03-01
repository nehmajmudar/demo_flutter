import 'package:demo_flutter/res/app_colors.dart';
import 'package:flutter/material.dart';

class ListTileDrawer extends StatelessWidget {
  final String listTileText;
  final IconData listTileIcon;

  const ListTileDrawer({Key? key,required this.listTileText,required this.listTileIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.pop(context);
      },
      title: Row(
        children: [
          Icon(listTileIcon,color: AppColors.colorGrey,),
          Padding(
            padding: EdgeInsets.only(left: 5.0,top: 5.0,bottom: 5.0),
            child: Text(listTileText,style: TextStyle(color: AppColors.colorGrey),),
          ),
        ],
      ),
    );
  }
}
