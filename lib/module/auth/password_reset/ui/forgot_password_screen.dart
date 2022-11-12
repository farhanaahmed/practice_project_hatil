import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:practice_project_hatil/module/auth/login/ui/login_screen.dart';
import 'package:practice_project_hatil/module/auth/password_reset/controller/forgot_password_controller.dart';
import 'package:practice_project_hatil/module/auth/password_reset/data/model/forgot_password_request.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final ForgotPasswordController _forgotPasswordController =
  ForgotPasswordController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            size: 32,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          // tooltip: MaterialLocalizations.of(context)
          //   .openAppDrawerTooltip,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: ListView(
          children: [
            Text(
              "Forgot password",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Please enter your email address.You will receive a link to "
                  "create a new password via email.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.grey),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.grey),
                ),
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                hintText: "Enter your email",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                final ForgotPasswordRequest forgotPasswordRequest = ForgotPasswordRequest(_emailController.text);
                final isForgotPassword = _forgotPasswordController
                    .forgotPassword(forgotPasswordRequest);
                if(isForgotPassword){

                }
                else{
                  Fluttertoast.showToast(
                    msg: "Invalid email!",
                    toastLength: Toast.LENGTH_SHORT,
                  );
                }
              },
              minWidth: double.infinity,
              height: 50,
              color: Colors.black,
              child: Text(
                "SEND",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
