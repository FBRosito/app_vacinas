import 'package:app_vacinas/screens/menu_screen.dart';
import 'package:flutter/material.dart';

class CasosClinicosScreen2 extends StatefulWidget {
  const CasosClinicosScreen2({Key? key}) : super(key: key);

  @override
  _CasosClinicosScreen2State createState() => _CasosClinicosScreen2State();
}

class _CasosClinicosScreen2State extends State<CasosClinicosScreen2> {
  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Resposta"),
            content: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MenuScreen(),
                  ),
                );
              },
              child: Text(
                "Voltar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Idade"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Anos',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Meses',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Dias',
              ),
            ),
          ),
          ElevatedButton(
            child: Text(
              "Continuar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              createAlertDialog(context);
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(240, 50),
            ),
          ),
        ],
      ),
    );
  }
}
