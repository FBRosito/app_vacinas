//import 'package:app_vacinas/screens/home.dart';
//import 'package:app_vacinas/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_vacinas/screens/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Vacinas',
      home: FirstScreen(),
    );
  }
}
