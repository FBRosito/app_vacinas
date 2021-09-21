import 'package:app_vacinas/screens/menu_screen.dart';
import 'package:app_vacinas/screens/prematuro_calendario_screen.dart';
import 'package:flutter/material.dart';

import 'hepatite_b_screen.dart';

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
          title: Text(
            "Calendários Vacinais",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: new Container(),
          backgroundColor: Colors.blue,
        ),
        body: getListView(),
      ),
    );
  }

  Widget getListView() {
    var listView = ListView(
      children: [
        ListTile(
          leading: Icon(Icons.short_text_outlined),
          title: Text('Prematuro'),
          trailing: Icon(Icons.shortcut_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CalendarioPrematuroScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.short_text_outlined),
          title: Text('Criança'),
          trailing: Icon(Icons.shortcut_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HepBScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.short_text_outlined),
          title: Text('Adolescente'),
          trailing: Icon(Icons.shortcut_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HepBScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.short_text_outlined),
          title: Text('Gestante'),
          trailing: Icon(Icons.shortcut_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HepBScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.short_text_outlined),
          title: Text('Adulto'),
          trailing: Icon(Icons.shortcut_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HepBScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.short_text_outlined),
          title: Text('Idoso'),
          trailing: Icon(Icons.shortcut_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HepBScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.short_text_outlined),
          title: Text('Indígena'),
          trailing: Icon(Icons.shortcut_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HepBScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.short_text_outlined),
          title: Text('Criança Exposta ao HIV'),
          trailing: Icon(Icons.shortcut_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HepBScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.short_text_outlined),
          title: Text('HIV'),
          trailing: Icon(Icons.shortcut_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HepBScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.short_text_outlined),
          title: Text('Saúde Trabalhador'),
          trailing: Icon(Icons.shortcut_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HepBScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.arrow_back_ios_new_outlined),
          title: Text('Voltar'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MenuScreen(),
              ),
            );
          },
        ),
      ],
    );
    return listView;
  }
}
