import 'package:practice_project_hatil/module/auth/login/data/model/login_request.dart';
import 'package:rxdart/subjects.dart';

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

  BehaviorSubject<String?> emailErrorMsgSubject = BehaviorSubject<String?>();
  BehaviorSubject<String?> passwordErrorMsgSubject = BehaviorSubject<String?>();

  bool _isValid(String email, String password) {
    bool returnValue = true;
    if(email.isEmpty){
      emailErrorMsgSubject.sink.add("Email field can not be empty");
      returnValue = false;
    }
    else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\"
    r".[a-zA-Z]+")
        .hasMatch(email)){
      emailErrorMsgSubject.sink.add("Invalid email");
      returnValue = false;
    }
    if(password.isEmpty){
      passwordErrorMsgSubject.sink.add("Password field can not be empty");
      returnValue = false;
    }
    else if(password.length<8){
      passwordErrorMsgSubject.sink.add("Password length must be at least 8 "
          "characters");
      returnValue = false;
    }
    return returnValue;
    // bool isEmailValid =  &&
    //     RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    //         .hasMatch(email);
    // bool isPasswordValid = password.isNotEmpty && password.length >= 8;
    //
    // return isEmailValid && isPasswordValid;
  }
}
