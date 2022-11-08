import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:practice_project_hatil/module/home/home_screen.dart';
import 'package:practice_project_hatil/module/splash/splash_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final String _email = "fima123@gmail.com";
  final String _password = "123456@@@";
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
                MaterialPageRoute(builder: (context) => SplashScreen()));
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
              "Login",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30,
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
              height: 30,
            ),
            TextField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.grey),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.grey),
                ),
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                hintText: "Enter your password",
              ),
            ),
            SizedBox(
              height: 100,
            ),
            MaterialButton(
              onPressed: () {
                // print(_emailController.text);
                // print(_passwordController.text);
                FocusManager.instance.primaryFocus?.unfocus();
                if (_emailController.text == _email &&
                    _passwordController.text == _password) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                    (route) => false,
                  );
                  //   //       Widget goToHome(BuildContext context) {
                  //   // return HomeScreen();
                  //   // }
                } else {
                  //print("Invalid email or password!");
                  Fluttertoast.showToast(
                    msg: "Invalid email or password!",
                    toastLength: Toast.LENGTH_SHORT,
                    // gravity: ToastGravity.CENTER,
                    // timeInSecForIosWeb: 1,
                    // backgroundColor: Colors.red,
                    // textColor: Colors.white,
                    // fontSize: 16.0
                  );
                }
              },
              minWidth: double.infinity,
              height: 40,
              color: Colors.black,
              child: Text(
                "LOGIN",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Forgot your password?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue),
              ),
              height: 40,
              minWidth: double.infinity,
              //color: Colors.white,
              child: Text(
                "LOGIN WITH FACEBOOK",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('Sign Up clicked');
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
