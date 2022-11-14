import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:practice_project_hatil/module/auth/login/ui/login_screen.dart';
import 'package:practice_project_hatil/module/auth/sign_up/controller/sign_up_controller.dart';
import 'package:practice_project_hatil/module/auth/sign_up/data/model/sign_up_request.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final SignUpController _signUpController = SignUpController();
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
              "Personal details",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            StreamBuilder<String?>(
              stream: _signUpController.emailErrorMsgSubject.stream,
              builder: (context, snapshot) {
                return TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    errorText: snapshot.data,
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
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            StreamBuilder<String?>(
              stream: _signUpController.passwordErrorMsgSubject.stream,
              builder: (context, snapshot) {
                return TextField(
                  controller: _passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    errorText: snapshot.data,
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
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            StreamBuilder<String?>(
              stream: _signUpController.phoneErrorMsgSubject.stream,
              builder: (context, snapshot) {
                return TextField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    errorText: snapshot.data,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                    labelText: "Phone",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    hintText: "Enter your phone number",
                  ),
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _dateOfBirthController,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.grey),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.grey),
                ),
                labelText: "Date of Birth",
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                hintText: "Enter your date of birth",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _addressController,
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.grey),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.grey),
                ),
                labelText: "Address",
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                hintText: "Enter your address",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                final SignUpRequest signUpRequest = SignUpRequest(
                  _emailController.text,
                  _passwordController.text,
                  _phoneController.text,
                  _dateOfBirthController.text,
                  _addressController.text,
                );
                final isSignedUp = _signUpController.signUp(signUpRequest);
                if (isSignedUp) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                      (route) => false);
                } else {
                  Fluttertoast.showToast(
                    msg: "Sign Up Failed! Try Again..",
                    toastLength: Toast.LENGTH_SHORT,
                  );
                }
              },
              minWidth: double.infinity,
              height: 50,
              color: Colors.black,
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: "Sign In",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
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
