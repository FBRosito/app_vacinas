import 'package:app_vacinas/screens/calendariosVacinaisScreen/calendario_adolescente_screen.dart';
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
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Calendários Vacinais"),
          backgroundColor: topColor,
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Calendário Criança'),
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
              title: Text('Calendário Adolescente'),
              subtitle: Text('Clique para acessar o calendário do adolescente'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CalendarioAdolescenteScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Calendário Adulto'),
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
              title: Text('Calendário Gestante'),
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
              title: Text('Calendário Idoso'),
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
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Calendário Indígena'),
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
              title: Text('Calendário Criança Exposta HIV'),
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
              title: Text('Calendário HIV'),
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
          ],
        ),
        bottomNavigationBar: FractionallySizedBox(
          heightFactor: 0.06,
          widthFactor: 1,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: topColor,
            ),
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
