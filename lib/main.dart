import 'package:flutter/material.dart';
import 'package:workshop1/Vue/SignUp.dart';
import 'package:workshop1/Vue/login.dart';
import 'Vue/TapBarNavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const TapBarNavigation(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUp(),
      },
    );
  }
}
