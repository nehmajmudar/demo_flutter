import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorBlack,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(AppString.txtHomeScreen),
              backgroundColor: AppColors.colorOrangeAccent,
              action: SnackBarAction(
                label: AppString.txtFileDownloaded,
                onPressed: (){},
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              behavior: SnackBarBehavior.floating,
            )
          );
        },
        child: Icon(Icons.file_download_done),
        backgroundColor: AppColors.colorOrangeAccent,
        splashColor: AppColors.colorBlack,
        elevation: 2,
        hoverColor: AppColors.colorGreen,
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                height: 100,
                width: 100,
                color: AppColors.colorRed,
              ),
              onTap: (){
                Fluttertoast.showToast(
                  msg: AppString.txtTextHere,
                  fontSize: 30,
                  backgroundColor: AppColors.colorOrangeAccent,
                  textColor: AppColors.colorBlack,
                  gravity: ToastGravity.CENTER
                );
              },
            ),
            GestureDetector(
              child: Container(
                height: 100,
                width: 100,
                color: AppColors.colorRed,
              ),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(AppString.txtHomeScreen),
                    backgroundColor: AppColors.colorOrangeAccent,
                    action: SnackBarAction(
                      label: AppString.txtAction,
                      onPressed: (){},
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    behavior: SnackBarBehavior.floating,
                  )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
