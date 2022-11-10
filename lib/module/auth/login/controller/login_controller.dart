import 'package:practice_project_hatil/module/auth/login/data/model/login_request.dart';

class LoginController {
  final String _email = "fima123@gmail.com";
  final String _password = "123456@@@";

  bool login(LoginRequest loginRequest) {
    if (_isValid(loginRequest.email, loginRequest.password) &&
        (loginRequest.email == _email && loginRequest.password == _password)) {
      return true;
    } else {
      return false;
    }
  }

  bool _isValid(String email, String password) {
    bool isEmailValid = email.isNotEmpty &&
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(email);
    bool isPasswordValid = password.isNotEmpty && password.length >= 8;

    return isEmailValid && isPasswordValid;
  }
}
