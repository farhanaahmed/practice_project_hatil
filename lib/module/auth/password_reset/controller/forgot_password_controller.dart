import 'package:practice_project_hatil/module/auth/password_reset/data/model/forgot_password_request.dart';
import 'package:rxdart/subjects.dart';

class ForgotPasswordController {
  BehaviorSubject<bool> isEmailSentSubject =
      BehaviorSubject<bool>.seeded(false);

  void forgotPassword(ForgotPasswordRequest forgotPasswordRequest) {
    if (_isValid(forgotPasswordRequest)) {
      isEmailSentSubject.sink.add(true);
    } else {
      isEmailSentSubject.sink.add(false);
    }
  }

  BehaviorSubject<String?> emailErrorMsgSubject = BehaviorSubject<String?>();

  bool _isValid(ForgotPasswordRequest forgotPasswordRequest) {
    if(forgotPasswordRequest.email.isEmpty){
      emailErrorMsgSubject.sink.add("Email can't be empty!");
      return false;
    }
    if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(forgotPasswordRequest.email)){
      emailErrorMsgSubject.sink.add("Invalid email!");
      return false;
    }
    return true;
  }
}
