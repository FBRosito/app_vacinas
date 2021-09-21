import 'package:app_vacinas/screens/menu_screen.dart';
import 'package:app_vacinas/screens/notificacoes_eapv_screen.dart';
import 'package:flutter/material.dart';
import 'hepatite_b_eapv_screen.dart';
import 'hepatite_b_screen.dart';

class EapvScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EapvScreenState();
  }
}

class _EapvScreenState extends State<EapvScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Eventos Adversos Pós Vacinais - EAPV",
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
          title: Text('Hepatite B'),
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
          title: Text('BCG'),
          trailing: Icon(Icons.shortcut_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HepBEapvScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.short_text_outlined),
          title: Text('Pentavalente (DTP + HIB + Hep. B)'),
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
          title: Text('VIP'),
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
          title: Text('VOP'),
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
          title: Text('Rotavirus'),
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
          title: Text('Pneumo 10'),
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
          title: Text('Meningo C'),
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
          title: Text('Tríplice Viral (SRC)'),
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
          title: Text('Tetraviral (SRC + Varicela)'),
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
          title: Text('Febre Amarela (FA)'),
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
          title: Text('Hepatite A'),
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
          title: Text('DTP'),
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
          title: Text('dT'),
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
          title: Text('dTpa'),
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
          title: Text('DTPa'),
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
          title: Text('Varicela'),
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
          title: Text('HPV'),
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
          title: Text('Meningo ACWY'),
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
          title: Text('Pneumo 23'),
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
          title: Text('Pneumo 13'),
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
          title: Text('COVID-19'),
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
          title: Text('Influenza'),
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
          title: Text('HIB'),
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
          title: Text('Notificações'),
          trailing: Icon(Icons.shortcut_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotificacoesEapvScreen(),
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
