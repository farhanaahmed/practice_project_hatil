import 'package:flutter/material.dart';
import 'package:practice_project_hatil/module/splash/splash_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Navigator.pop(context, MaterialPageRoute(builder: (context) =>
            SplashScreen()));
          },
          // tooltip: MaterialLocalizations.of(context)
          //   .openAppDrawerTooltip,
        ),
      ),
    );
  }
}
