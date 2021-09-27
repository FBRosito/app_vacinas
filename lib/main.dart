import 'package:app_vacinas/screens/menu_screen.dart';
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
      home: MenuScreen(),
    );
  }
}
