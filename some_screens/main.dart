import 'package:flutter/material.dart';
import 'otp_screen.dart';
import 'login_screen.dart';
import 'welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Cairo'), // ينصح بإضافة خط عربي
      home: WelcomeScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/otp': (context) => OtpScreen(),
      },
    );
  }
}
