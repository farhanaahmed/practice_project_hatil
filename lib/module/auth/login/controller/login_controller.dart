class LoginController{
  final String _email = "fima123@gmail.com";
  final String _password = "123456@@@";

  bool login(String email, String password){
    if (email == _email && password == _password) {
      return true;
    } else {
      return false;
    }
  }
}