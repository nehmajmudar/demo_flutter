import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
import 'package:flutter/material.dart';

class UserLogInConfirm extends StatefulWidget {
  const UserLogInConfirm({Key? key}) : super(key: key);

  @override
  _UserLogInConfirmState createState() => _UserLogInConfirmState();
}

class _UserLogInConfirmState extends State<UserLogInConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppString.txtYouAreLoggedIn,style: TextStyle(fontSize: 30,color: AppColors.colorIndigo),),
      ),
    );
  }
}
