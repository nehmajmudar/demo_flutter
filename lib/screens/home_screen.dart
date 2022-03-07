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

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTitle(currentIndex)),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(""),
              accountEmail: Text(AppString.txtNehEmail,style: TextStyle(color: AppColors.colorWhite),),
              decoration: BoxDecoration(
                color: AppColors.colorBlue
              ),
              currentAccountPicture: CircleAvatar(
                // child: Image.network("https://media-exp1.licdn.com/dms/image/C5603AQEodcQaYEnc_A/profile-displayphoto-shrink_800_800/0/1627659293617?e=1651708800&v=beta&t=aWpuRzGkB2ydEuRWxvsxWXAdaZYgo0-TiCxYMKmQpQ8")
                child: Text("N"),
              ),
            ),
            ///For the list tiles.
            listTileDrawer(listTileText: AppString.txtInbox, listTileIcon: Icons.mail_rounded,onClicked: ()=> currentItem(0)),
            listTileDrawer(listTileText: AppString.txtStarred, listTileIcon: Icons.star_border_sharp,onClicked: ()=>  currentItem(1)),
            listTileDrawer(listTileText: AppString.txtSentMail, listTileIcon: Icons.mark_email_read,onClicked: ()=> currentItem(2)),
            listTileDrawer(listTileText: AppString.txtDrafts, listTileIcon: Icons.drafts,onClicked:  ()=> currentItem(3)),
            listTileDrawer(listTileText: AppString.txtAllMail, listTileIcon: Icons.mail,onClicked:  ()=> currentItem(4)),
            listTileDrawer(listTileText: AppString.txtTrash, listTileIcon: Icons.restore_from_trash_outlined,onClicked:  ()=> currentItem(5)),
            listTileDrawer(listTileText: AppString.txtSpam, listTileIcon: Icons.cancel_presentation_sharp,onClicked:  ()=> currentItem(6)),
            listTileDrawer(listTileText: AppString.txtFollowUp, listTileIcon: Icons.arrow_back,onClicked:  ()=> currentItem(7)),
          ],
        ),
      ),
      body: getScreen(currentIndex),
    );
  }

  String getTitle(int index){
    switch(index){
      case 0:
        return AppString.txtInbox;
      case 1:
        return AppString.txtStarred;
      case 2:
        return AppString.txtSentMail;
      case 3:
        return AppString.txtDrafts;
      case 4:
        return AppString.txtAllMail;
      case 5:
        return AppString.txtTrash;
      case 6:
        return AppString.txtSpam;
      case 7:
        return AppString.txtFollowUp;
      default:
        return AppString.txtNoScreenFound;
    }
  }

  Widget getScreen(int index){
    switch(index){
      case 0:
        return InboxScreen();
      case 1:
        return StarredScreen();
      case 2:
        return SentMailScreen();
      case 3:
        return DraftsScreen();
      case 4:
        return AllMailScreen();
      case 5:
        return TrashScreen();
      case 6:
        return SpamScreen();
      case 7:
        return FollowUpScreen();
      default:
        return InboxScreen();
    }
  }
  currentItem(int index){
      setState((){
        currentIndex=index;
      });
      Navigator.pop(context);
    }

}


Widget listTileDrawer({
  required String listTileText,
  required IconData listTileIcon,
  VoidCallback? onClicked
}){
  return ListTile(
    title: Row(
      children: [
        Icon(listTileIcon),
        Padding(
          padding: EdgeInsets.only(left: 5.0,top: 5.0,bottom: 5.0),
          child: Text(listTileText,style: TextStyle(color: AppColors.colorGrey),),
        ),
      ],
    ),
    onTap: onClicked
  );
}