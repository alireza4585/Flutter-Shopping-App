import 'package:ecommerce/util/exception.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthenticationDatasource {
  Future<void> register(String email, String password, String Confirmpassword);
  Future<void> Login(String email, String password);
}

class AuthenticationRemote implements IAuthenticationDatasource {
  @override
  Future<void> Login(String email, String password) async {
    try {
      final response = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());
    } on FirebaseAuthException catch (ex) {
      throw expention(ex.message.toString());
    }
  }

  @override
  Future<void> register(
      String email, String password, String Confirmpassword) async {
    try {
      if (password == Confirmpassword) {
        final response = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: email.trim(), password: password.trim());
      } else {
        throw expention('confirm password  is not correct');
      }
    } on FirebaseAuthException catch (ex) {
      throw expention(ex.message.toString());
    }
  }
}
