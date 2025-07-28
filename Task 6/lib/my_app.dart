import 'package:flutter/material.dart';
import 'package:flutter_signup/screens/signup_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      home: SignUpScreen(),
    );
  }
}