import 'package:app_vacinas/screens/first_screen.dart';
import 'package:flutter/material.dart';
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
    );
  }
}
