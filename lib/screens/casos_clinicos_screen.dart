import 'package:app_vacinas/screens/casos_clinicos_screen2.dart';
import 'package:flutter/material.dart';

class CasosClinicosScreen extends StatefulWidget {
  const CasosClinicosScreen({Key? key}) : super(key: key);

  @override
  _CasosClinicosScreenState createState() => _CasosClinicosScreenState();
}

Map<String, bool> values = {
  'BCG - Dose Única': false,
  'Hepatite B - Dose Inicial': false,
  'Pentavalente(DPT+Hib+HB) - 1ª dose': false,
  'Pentavalente(DPT+Hib+HB) - 2ª dose': false,
  'Pentavalente(DPT+Hib+HB) - 3ª dose': false,
  'Poliomelite inativada(VIP) - 1ª dose': false,
  'Poliomelite inativada(VIP) - 2ª dose': false,
  'Poliomelite inativada(VIP) - 3ª dose': false,
  'Rotavírus humano oral - 1ª dose': false,
  'Rotavírus humano oral - 2ª dose': false,
  'Pneumocócica 10 - 1ª dose': false,
  'Pneumocócica 10 - 2ª dose': false,
  'Meningogócica C - 1ª dose': false,
  'Meningogócica C - 2ª dose': false,
  'Influenza - Anualmente': false,
  'Febre Amarela- 1ª dose': false,
};

class _CasosClinicosScreenState extends State<CasosClinicosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vacinas já tomadas:"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: new ListView(
          children: values.keys.map((String key) {
            return new CheckboxListTile(
              title: new Text(key),
              value: values[key],
              onChanged: (bool? value) {
                setState(() {
                  values[key] = value!;
                });
              },
            );
          }).toList(),
        ),
      ),
      bottomNavigationBar: FractionallySizedBox(
        heightFactor: 0.05,
        widthFactor: 0.5,
        alignment: AlignmentDirectional.bottomCenter,
        child: ElevatedButton(
          child: Text(
            "Continuar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CasosClinicosScreen2(),
              ),
            );
          },
        ),
      ),
    );
  }
}
