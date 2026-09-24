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
    url: 'https://xksjfgsbqgcgpsehhvej.supabase.co',
    anonKey:
    'sb_publishable_vAQeZDCYcgy3keHIIktEgQ_hDeaahLa',
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
