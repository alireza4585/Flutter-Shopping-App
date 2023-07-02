import 'package:ecommerce/data/bloc/auth/auth_bloc.dart';
import 'package:ecommerce/screens/login_page.dart';
import 'package:ecommerce/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool a = true;
  void go() {
    setState(() {
      a = !a;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (a) {
      return BlocProvider(
        create: (context) => AuthBloc(),
        child: LoginPage(show: go),
      );
    } else {
      return BlocProvider(
        create: (context) => AuthBloc(),
        child: Signup(show: go),
      );
    }
  }
}
