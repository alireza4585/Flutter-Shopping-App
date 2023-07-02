abstract class AuthEvent {}

class AuthRequest extends AuthEvent {
  String email;
  String password;
  String Confirmpassword;
  bool Login;
  AuthRequest(this.Confirmpassword, this.Login, this.email, this.password);
}
