import 'package:app_vacinas/screens/calendariosVacinaisScreen/calendario_crianca_screen.dart';
import 'package:app_vacinas/screens/menu_screen.dart';
import 'package:app_vacinas/screens/vacinasScreen/hepatite_b_screen.dart';
import 'package:flutter/material.dart';

class CalendariosVacinaisScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendariosVacinaisScreenState();
  }
}

class _CalendariosVacinaisScreenState extends State<CalendariosVacinaisScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Calendários Vacinais"),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Calendário da Criança'),
              subtitle: Text('Clique para acessar o calendário da criança'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CalendarioCriancaScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Calendário do Adolescente'),
              subtitle: Text('Clique para acessar o calendário do adolescente'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Calendário do Adulto'),
              subtitle: Text('Clique para acessar o calendário do adulto'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Calendário da Gestante'),
              subtitle: Text('Clique para acessar o calendário da gestante'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Calendário do Idoso'),
              subtitle: Text('Clique para acessar o calendário do idoso'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: FractionallySizedBox(
          heightFactor: 0.06,
          widthFactor: 1,
          child: ElevatedButton(
            child: Text(
              "Voltar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MenuScreen(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
