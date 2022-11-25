//import 'package:app_vacinas/screens/casos_clinicos_screen2.dart';

//import 'package:app_vacinas/screens/casos_clinicos_screen1.dart';
import 'package:app_vacinas/screens/first_screen.dart';
import 'package:flutter/material.dart';
//import 'package:app_vacinas/screens/first_screen.dart';
//import 'package:app_vacinas/screens/registro_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Vacinas',
      home: FirstScreen(),
      //home: RegistroScreen(),
      //home: CasosClinicosScreen1(),
      //home: CasosClinicosScreen2(),
    );
  }
}
