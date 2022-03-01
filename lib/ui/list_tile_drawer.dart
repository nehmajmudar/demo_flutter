import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
import 'package:demo_flutter/screens/all_mail_screen.dart';
import 'package:demo_flutter/screens/drafts_screen.dart';
import 'package:demo_flutter/screens/follow_up_screen.dart';
import 'package:demo_flutter/screens/inbox_screen.dart';
import 'package:demo_flutter/screens/sent_mail_screen.dart';
import 'package:demo_flutter/screens/spam_screen.dart';
import 'package:demo_flutter/screens/starred_screen.dart';
import 'package:demo_flutter/screens/trash_screen.dart';
import 'package:flutter/material.dart';

class ListTileDrawer extends StatefulWidget {
  final String listTileText;
  final IconData listTileIcon;
  final int index;

  const ListTileDrawer({Key? key,required this.listTileText,required this.listTileIcon,required this.index}) : super(key: key);

  @override
  _ListTileDrawerState createState() => _ListTileDrawerState();
}

class _ListTileDrawerState extends State<ListTileDrawer> {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ()=>itemOnTap(context,widget.index),
      title: Row(
        children: [
          Icon(widget.listTileIcon,color: AppColors.colorGrey,),
          Padding(
            padding: EdgeInsets.only(left: 5.0,top: 5.0,bottom: 5.0),
            child: Text(widget.listTileText,style: TextStyle(color: AppColors.colorGrey),),
          ),
        ],
      ),
    );
  }

  void itemOnTap(BuildContext context,int index){
    // Navigator.pop(context);
    switch(index){
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> InboxScreen())
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> StarredScreen())
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> SentMailScreen())
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> DraftsScreen())
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> AllMailScreen())
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> TrashScreen())
        );
        break;
      case 6:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> SpamScreen())
        );
        break;
      case 7:
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> FollowUpScreen())
        );
        break;

      default:
        Text(AppString.txtNoScreenFound);
        break;
    }
  }
}
