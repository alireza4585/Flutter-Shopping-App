import 'package:ecommerce/auth/auth.dart';
import 'package:ecommerce/constants/navigation.dart';
import 'package:ecommerce/screens/home.dart';
import 'package:ecommerce/screens/login_page.dart';
import 'package:ecommerce/screens/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
