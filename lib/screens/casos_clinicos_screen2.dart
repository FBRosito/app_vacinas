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
            title: Text("Conclusões Finais"),
            content: Column(
              children: [
                ListTile(
                  title: Text(
                    "Sempre verificar as contraindicações de cada imunobiológico",
                  ),
                  leading: Icon(
                    Icons.warning,
                    color: Colors.yellow[600],
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Realizar a dose 1 da Vacina Pentavalente (DTP+Hib+Hep B)",
                  ),
                  leading: Icon(
                    Icons.dangerous_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Aprazar a dose 2 da Vacina Pentavalente (DTP+Hib+Hep B) para 2 meses",
                  ),
                  leading: Icon(
                    Icons.dangerous_outlined,
                    color: Colors.orange,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Realizar a dose 1 da Vacina Poliomelite Inativada (VIP)",
                  ),
                  leading: Icon(
                    Icons.dangerous_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Aprazar a dose 2 da Vacina Poliomelite Inativada (VIP) para 2 meses",
                  ),
                  leading: Icon(
                    Icons.dangerous_outlined,
                    color: Colors.orange,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Realizar a dose 1 da Vacina Pneumocócica 10",
                  ),
                  leading: Icon(
                    Icons.dangerous_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Aprazar a dose 2 da Vacina Pneumocócica 10 para 2 meses",
                  ),
                  leading: Icon(
                    Icons.dangerous_outlined,
                    color: Colors.orange,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Realizar a dose 1 da Vacina Meningogócica C",
                  ),
                  leading: Icon(
                    Icons.dangerous_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Aprazar a dose 2 da Vacina Meningogócica C para 2 meses",
                  ),
                  leading: Icon(
                    Icons.dangerous_outlined,
                    color: Colors.orange,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Vacina Rotavírus Humano Oral contraindicada  para a faixa etária",
                  ),
                  leading: Icon(
                    Icons.dangerous_outlined,
                    color: Colors.red,
                    size: 30.0,
                  ),
                ),
                ElevatedButton(
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
              ],
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
