class SignUpRequest {
  String email;
  String password;
  String phone;
  String? dateOfBirth;
  String? address;

  SignUpRequest(
      this.email, this.password, this.phone, this.dateOfBirth, this.address);
}
