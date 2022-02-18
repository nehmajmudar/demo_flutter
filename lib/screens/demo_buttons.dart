import 'package:demo_flutter/custom_dialogues/delete_custom_alert.dart';
import 'package:demo_flutter/custom_dialogues/inkwell_custom_alert.dart';
import 'package:demo_flutter/custom_dialogues/privacyInfo_custom_alert.dart';
import 'package:demo_flutter/custom_dialogues/searchbar_custom_alert.dart';
import 'package:demo_flutter/res/colors.dart';
import 'package:demo_flutter/res/strings.dart';
import 'package:flutter/material.dart';

class DemoButtons extends StatefulWidget {
  const DemoButtons({Key? key}) : super(key: key);

  @override
  _DemoButtonsState createState() => _DemoButtonsState();
}

class _DemoButtonsState extends State<DemoButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.colorBlack,
        title: Text(AppString.txtButtonsWithAlertDialogues,style: TextStyle(color: AppColors.colorWhite),),
        centerTitle: true,
      ),
      backgroundColor: AppColors.colorOrangeAccent,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                  child: Container(
                    height: 100,
                    margin: EdgeInsets.only(top: 40.0,bottom: 40.0),
                    width: 100,
                    alignment: Alignment.center,
                    child: Text(AppString.txtDeleteContent,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                        color: AppColors.colorWhite24,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                  onTap: (){
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context){
                          return DeleteCustomAlert(title: AppString.txtDeleteContent, content: AppString.txtAreYouSureToRemoveTheContent);
                        }
                    );
                  }
              ),
              GestureDetector(
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(bottom: 40.0),
                    alignment: Alignment.center,
                    child: Text(AppString.txtPrivacyConfirmation,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                        color: AppColors.colorWhite24,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                  onTap: (){
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context){
                          return PrivacyCustomAlert(title: AppString.txtPrivacyInfo, content: AppString.txtTheBackupsWithThisFunctionalityMayContainSomeSensitiveData);
                        }
                    );
                  }
              ),
              GestureDetector(
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(bottom: 40.0),
                    alignment: Alignment.center,
                    child: Text(AppString.txtSearchBar,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(
                        color: AppColors.colorWhite24,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                  onTap: (){
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context){
                          return SearchbarCustomAlert(title: AppString.txtSearchBar, content: AppString.txtSelectTheSearchBar);
                        }
                    );
                  }
              ),
              InkWell(
                splashColor: AppColors.colorGreen,
                child: Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  child: Text(AppString.txtInkWellQuiz,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  decoration: BoxDecoration(
                      color: AppColors.colorWhite24,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
                onTap: (){
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context){
                        return InkwellCustomAlert(title: AppString.txtWhoaTakeItEasy, content: AppString.txtYouCanOnlyPost1QuizIn2Minutes);
                      }
                  );
                },
                onDoubleTap: (){
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context){
                        return InkwellCustomAlert(title: AppString.txtDoYouWantToFinishTheQuiz, content: AppString.txtYouDidIt);
                      }
                  );
                },
                onLongPress: (){
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context){
                        return InkwellCustomAlert(title: AppString.txtOopsTheQuiz, content: AppString.txtYouCanTryAgain);
                      }
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
