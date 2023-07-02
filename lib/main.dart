import 'package:ecommerce/auth/auth.dart';
import 'package:ecommerce/auth/main_auth.dart';
import 'package:ecommerce/constants/navigation.dart';
import 'package:ecommerce/screens/home.dart';
import 'package:ecommerce/screens/login_page.dart';
import 'package:ecommerce/screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainAuth(),
    );
  }
}
