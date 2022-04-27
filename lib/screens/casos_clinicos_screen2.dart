//import 'package:app_vacinas/screens/imunobiologicos_screen.dart';
//import 'package:app_vacinas/screens/menu_screen.dart';
import 'package:app_vacinas/screens/casos_clinicos_screen3.dart';
import 'package:flutter/material.dart';
//import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CasosClinicosScreen2 extends StatefulWidget {
  const CasosClinicosScreen2({Key? key}) : super(key: key);

  @override
  _CasosClinicosScreen2State createState() => _CasosClinicosScreen2State();
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
bool isVisible0 = false;
bool isVisible1 = false;
bool isVisible2 = false;
bool isVisible3 = false;
bool isVisible4 = false;
bool isVisible5 = false;
bool isVisible6 = false;
bool isVisible7 = false;
bool isVisible8 = false;
bool isVisible9 = false;
bool isVisible10 = false;
bool isVisible11 = false;
bool isVisible12 = false;
bool isVisible13 = false;
bool isVisible14 = false;
bool isVisible15 = false;

class _CasosClinicosScreen2State extends State<CasosClinicosScreen2> {
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selecione as vacinas que o usuário realizou: "),
        backgroundColor: topColor,
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
              activeColor: topColor,
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
          style: ElevatedButton.styleFrom(
            primary: topColor,
          ),
          child: Text(
            "Prosseguir",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            listaCheckBox() {
              return values.keys.map((String key) {
                if (values[key] == true) {
                  return key;
                }
              }).toList();
            }

            print(listaCheckBox());
            if (listaCheckBox().contains('BCG - Dose Única')) {
              isVisible0 = true;
            }
            if (listaCheckBox().contains('Hepatite B - Dose Inicial')) {
              isVisible1 = true;
            }
            if (listaCheckBox()
                .contains('Pentavalente(DPT+Hib+HB) - 1ª dose')) {
              isVisible2 = true;
            }
            if (listaCheckBox()
                .contains('Pentavalente(DPT+Hib+HB) - 2ª dose')) {
              isVisible3 = true;
            }
            if (listaCheckBox()
                .contains('Pentavalente(DPT+Hib+HB) - 3ª dose')) {
              isVisible4 = true;
            }
            if (listaCheckBox()
                .contains('Poliomelite inativada(VIP) - 1ª dose')) {
              isVisible5 = true;
            }
            if (listaCheckBox()
                .contains('Poliomelite inativada(VIP) - 2ª dose')) {
              isVisible6 = true;
            }
            if (listaCheckBox()
                .contains('Poliomelite inativada(VIP) - 3ª dose')) {
              isVisible7 = true;
            }
            if (listaCheckBox().contains('Rotavírus humano oral - 1ª dose')) {
              isVisible8 = true;
            }
            if (listaCheckBox().contains('Rotavírus humano oral - 2ª dose')) {
              isVisible9 = true;
            }
            if (listaCheckBox().contains('Pneumocócica 10 - 1ª dose')) {
              isVisible10 = true;
            }
            if (listaCheckBox().contains('Pneumocócica 10 - 2ª dose')) {
              isVisible11 = true;
            }
            if (listaCheckBox().contains('Meningogócica C - 1ª dose')) {
              isVisible12 = true;
            }
            if (listaCheckBox().contains('Meningogócica C - 2ª dose')) {
              isVisible13 = true;
            }
            if (listaCheckBox().contains('Influenza - Anualmente')) {
              isVisible14 = true;
            }
            if (listaCheckBox().contains('Febre Amarela- 1ª dose')) {
              isVisible15 = true;
            }
            print(isVisible0);
            print(isVisible1);
            print(isVisible2);
            print(isVisible3);
            print(isVisible4);
            print(isVisible5);
            print(isVisible6);
            print(isVisible7);
            print(isVisible8);
            print(isVisible9);
            print(isVisible10);
            print(isVisible11);
            print(isVisible12);
            print(isVisible13);
            print(isVisible14);
            print(isVisible15);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CasosClinicosScreen3(),
              ),
            );
          },
        ),
      ),
    );
  }
}
