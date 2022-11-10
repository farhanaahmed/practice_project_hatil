import 'package:practice_project_hatil/module/auth/sign_up/data/model/sign_up_request.dart';

class SignUpController {
  bool signUp(SignUpRequest signUpRequest){
    if(_isvalid(signUpRequest)){
      return true;
    }
    else{
      return false;
    }
  }

  bool _isvalid(SignUpRequest signUpRequest) {
    bool isEmailValid = signUpRequest.email.isNotEmpty &&
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(signUpRequest.email);

    bool isPasswordValid =
        signUpRequest.password.isNotEmpty && signUpRequest.password.length >= 8;

    bool isPhoneValid = signUpRequest.phone.isNotEmpty;
    return isEmailValid && isPasswordValid && isPhoneValid;
  }

}
