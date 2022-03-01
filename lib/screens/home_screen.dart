import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
import 'package:demo_flutter/ui/list_tile_drawer.dart';
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
        title: Text(AppString.txtHomeScreen),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
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
              )
            ),

            ///For the list tiles.
            ListTileDrawer(listTileText: AppString.txtInbox, listTileIcon: Icons.mail_rounded),
            ListTileDrawer(listTileText: AppString.txtStarred, listTileIcon: Icons.star_border_sharp),
            ListTileDrawer(listTileText: AppString.txtSentMail, listTileIcon: Icons.mark_email_read),
            ListTileDrawer(listTileText: AppString.txtDrafts, listTileIcon: Icons.drafts),
            ListTileDrawer(listTileText: AppString.txtAllMail, listTileIcon: Icons.mail),
            ListTileDrawer(listTileText: AppString.txtTrash, listTileIcon: Icons.restore_from_trash_outlined),
            ListTileDrawer(listTileText: AppString.txtSpam, listTileIcon: Icons.cancel_presentation_sharp),
            ListTileDrawer(listTileText: AppString.txtFollowUp, listTileIcon: Icons.arrow_back),
          ],
        ),
      ),
    );
  }
}