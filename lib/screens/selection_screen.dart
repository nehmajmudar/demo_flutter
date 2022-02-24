import 'package:demo_flutter/res/app_colors.dart';
import 'package:demo_flutter/res/app_strings.dart';
import 'package:flutter/material.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {

  var checkboxToSelect=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorBlack,
        title: Text(AppString.txtSelectionScreen),
        centerTitle: true,
        automaticallyImplyLeading: false,     ///Removed back arrow just to complete the task properly
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: checkboxToSelect,
                  onChanged: (value){
                    setState(() {
                      checkboxToSelect=value!;
                    });
                  }),
                SizedBox(
                  width: 10,
                ),
                Text(AppString.txtSelectCheckbox)
              ],
            ),
            GestureDetector(
              child: Container(
                width: 100,
                height: 100,
                color: AppColors.colorGrey300,
                margin: EdgeInsets.only(top: 20.0),
                alignment: Alignment.center,
                child: Text(AppString.txtPressHere),
              ),
              onTap: (){
                _sendCheckbox(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _sendCheckbox(BuildContext context){
    bool checkboxSelection=checkboxToSelect;
    Navigator.pop(context,checkboxSelection);
  }
}
