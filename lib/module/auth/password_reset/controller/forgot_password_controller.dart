import 'package:practice_project_hatil/module/auth/password_reset/data/model/forgot_password_request.dart';

class ForgotPasswordController {

  bool forgotPassword(ForgotPasswordRequest forgotPasswordRequest){
    if(_isValid(forgotPasswordRequest)){
      return true;
    }
    else{
      return false;
    }
}

  bool _isValid(ForgotPasswordRequest forgotPasswordRequest) {
    bool _isEmailValid = forgotPasswordRequest.email.isNotEmpty &&
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(forgotPasswordRequest.email);
    return _isEmailValid;
  }
}
