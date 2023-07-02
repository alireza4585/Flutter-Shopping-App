import 'package:bloc/bloc.dart';
import 'package:ecommerce/data/bloc/auth/auth_event.dart';
import 'package:ecommerce/data/bloc/auth/auth_state.dart';
import 'package:ecommerce/data/repository/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthenticationRepository _repository = AuthenticationRepository();
  AuthBloc() : super(AuthStateInitiate()) {
    on<AuthRequest>((event, emit) async {
      if (event.Login) {
        var loginResponse =
            await _repository.Login(event.email, event.password);
        emit(LoginResponseState(loginResponse));
      } else {
        var SignupResponse = await _repository.Register(
            event.email, event.password, event.Confirmpassword);
        emit(SignUpResponseState(SignupResponse));
      }
    });
  }
}
