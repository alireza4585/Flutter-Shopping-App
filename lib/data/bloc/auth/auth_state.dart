import 'package:either_dart/either.dart';

abstract class AuthState {}

class AuthStateLoading extends AuthState {}

class AuthStateInitiate extends AuthState {}

class SignUpResponseState extends AuthState {
  Either<String, String> SignUp;
  SignUpResponseState(this.SignUp);
}

class LoginResponseState extends AuthState {
  Either<String, String> Login;
  LoginResponseState(this.Login);
}
