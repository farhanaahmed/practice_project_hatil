import 'package:practice_project_hatil/module/auth/sign_up/data/model/sign_up_request.dart';
import 'package:rxdart/rxdart.dart';

class SignUpController {
  bool signUp(SignUpRequest signUpRequest) {
    if (_isvalid(signUpRequest)) {
      return true;
    } else {
      return false;
    }
  }

  BehaviorSubject<String?> emailErrorMsgSubject = BehaviorSubject<String?>();
  BehaviorSubject<String?> passwordErrorMsgSubject = BehaviorSubject<String?>();
  BehaviorSubject<String?> phoneErrorMsgSubject = BehaviorSubject<String?>();

  bool _isvalid(SignUpRequest signUpRequest) {
    bool returnValue = true;
    if (signUpRequest.email.isEmpty) {
      emailErrorMsgSubject.sink.add("Email field can not be empty");
      returnValue = false;
    } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]"
            r"+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(signUpRequest.email)) {
      emailErrorMsgSubject.sink.add("Invalid email");
      returnValue = false;
    }
    if(signUpRequest.password.isEmpty){
      passwordErrorMsgSubject.sink.add("Password field can not be empty");
      returnValue = false;
    }
    else if(signUpRequest.password.length<7){
      passwordErrorMsgSubject.sink.add("Password length must be at least 8 characters");
      returnValue = false;
    }
    if(signUpRequest.phone.isEmpty){
      phoneErrorMsgSubject.sink.add("Phone number is required");
      returnValue = false;
    }
    return returnValue;
    // bool isEmailValid = signUpRequest.email.isNotEmpty &&
    //     RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    //         .hasMatch(signUpRequest.email);
    //
    // bool isPasswordValid =
    //     signUpRequest.password.isNotEmpty && signUpRequest.password
    //     .length >= 8;
    //
    // bool isPhoneValid = signUpRequest.phone.isNotEmpty;
    // return isEmailValid && isPasswordValid && isPhoneValid;
  }
}