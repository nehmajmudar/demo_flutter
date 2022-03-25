import 'package:demo_flutter/res/app_strings.dart';
import 'package:demo_flutter/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreenUI extends StatefulWidget {
  const LoginScreenUI({Key? key}) : super(key: key);

  @override
  _LoginScreenUIState createState() => _LoginScreenUIState();
}

class _LoginScreenUIState extends State<LoginScreenUI> {

  Future<User?> loginWithEmailPassword({required String emailId, required String password, required BuildContext context}) async {
    FirebaseAuth auth=FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential=await auth.signInWithEmailAndPassword(email: emailId, password: password);
      user=userCredential.user;
    }
    on FirebaseAuthException catch(e){
      if(e.code=="user-not-found"){
        print("No user found.");
      }
    }
    return user;
  }


  @override
  Widget build(BuildContext context) {

    TextEditingController emailIdController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailIdController,
              decoration: InputDecoration(
                hintText: AppString.txtEmailId,
              ),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: AppString.txtPassword,
              ),
            ),
            GestureDetector(
              child: Container(
                child: Text(AppString.txtSubmit),
              ),
              onTap: ()async{
                User? user=await loginWithEmailPassword(emailId: emailIdController.text, password: passwordController.text, context: context);
                print(user);
                if(user!=null){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                }
              },
            )
          ],
        ),
      ],
    );
  }
}
