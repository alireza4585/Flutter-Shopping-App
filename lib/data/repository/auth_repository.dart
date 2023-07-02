import 'package:ecommerce/data/datasource/auth_datasurce.dart';
import 'package:ecommerce/util/exception.dart';
import 'package:either_dart/either.dart';

abstract class IAuthenticationRepository {
  Future<Either<String, String>> Register(
      String email, String password, String Confirmpassword);
  Future<Either<String, String>> Login(String email, String password);
}

class AuthenticationRepository extends IAuthenticationRepository {
  final AuthenticationRemote _datasource = AuthenticationRemote();
  @override
  Future<Either<String, String>> Login(String email, String password) async {
    try {
      await _datasource.Login(email, password);
      return Right('wellcom');
    } on expention catch (ex) {
      return Left(ex.message ?? '');
    }
  }

  @override
  Future<Either<String, String>> Register(
      String email, String password, String Confirmpassword) async {
    try {
      await _datasource.register(email, password, Confirmpassword);
      return Right('Register don');
    } on expention catch (ex) {
      return Left(ex.message ?? '');
    }
  }
}
