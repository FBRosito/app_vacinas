//import 'package:app_vacinas/screens/casos_clinicos_screen2.dart';
//import 'package:app_vacinas/screens/casos_clinicos_screen1.dart';
import 'package:app_vacinas/screens/first_screen.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:app_vacinas/firebase_options.dart';
//import 'package:app_vacinas/screens/first_screen.dart';
//import 'package:app_vacinas/screens/registro_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://vorhfetcibnvnvtuqmnu.supabase.co',
    anonKey: 
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZvcmhmZXRjaWJudm52dHVxbW51Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTE1OTQ0NjQsImV4cCI6MjAwNzE3MDQ2NH0.BEQ0WYpuybH6stNKTUAX9jIwWPY_rfdhNYW6L0X3dS0',
  );
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
