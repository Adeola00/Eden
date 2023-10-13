// ignore_for_file: prefer_const_constructors

import 'screens/forgotpass.dart';
import 'screens/homepage.dart';
import 'screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'screens/form.dart';
import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/regPage': (context) => FormPage(),
        '/loginPage': (context) => LoginPage(),
        '/homePage': (context) => HomePage(),
        '/passPage': (context) => PasswordPage(),
      },
      home: const Splash(),
    );
  }
}
