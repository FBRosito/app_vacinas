import 'package:app_vacinas/screens/casos_clinicos_screen2.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:intl/intl.dart';

class CasosClinicosScreen3 extends StatefulWidget {
  const CasosClinicosScreen3({Key? key}) : super(key: key);

  @override
  _CasosClinicosScreen3State createState() => _CasosClinicosScreen3State();
}

class _CasosClinicosScreen3State extends State<CasosClinicosScreen3> {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});

  DateTime data = DateTime.now();
  final controller0 = TextEditingController();
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();
  final controller5 = TextEditingController();
  final controller6 = TextEditingController();
  final controller7 = TextEditingController();
  final controller8 = TextEditingController();
  final controller9 = TextEditingController();
  final controller10 = TextEditingController();
  final controller11 = TextEditingController();
  final controller12 = TextEditingController();
  final controller13 = TextEditingController();
  final controller14 = TextEditingController();
  final controller15 = TextEditingController();

  @override
  void dispose() {
    controller0.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    controller6.dispose();
    controller7.dispose();
    controller8.dispose();
    controller9.dispose();
    controller10.dispose();
    controller11.dispose();
    controller12.dispose();
    controller13.dispose();
    controller14.dispose();
    controller15.dispose();
    super.dispose();
  }

  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);
  final bool isVisible0a = isVisible0;
  final bool isVisible1a = isVisible1;
  final bool isVisible2a = isVisible2;
  final bool isVisible3a = isVisible3;
  final bool isVisible4a = isVisible4;
  final bool isVisible5a = isVisible5;
  final bool isVisible6a = isVisible6;
  final bool isVisible7a = isVisible7;
  final bool isVisible8a = isVisible8;
  final bool isVisible9a = isVisible9;
  final bool isVisible10a = isVisible10;
  final bool isVisible11a = isVisible11;
  final bool isVisible12a = isVisible12;
  final bool isVisible13a = isVisible13;
  final bool isVisible14a = isVisible14;
  final bool isVisible15a = isVisible15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data das Vacinas Realizadas"),
        backgroundColor: topColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: [
            Visibility(
              visible: isVisible0a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina BCG - Dose Única foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller0,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible1a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Hepatite B - Dose Inicial foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller1,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible2a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Pentavalente(DPT+Hib+HB) - 1ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller2,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible3a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Pentavalente(DPT+Hib+HB) - 2ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller3,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible4a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Pentavalente(DPT+Hib+HB) - 3ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller4,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible5a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Poliomelite inativada(VIP) - 1ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller5,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible6a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Poliomelite inativada(VIP) - 2ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [
                      maskFormatter,
                    ],
                    controller: controller6,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible7a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Poliomelite inativada(VIP) - 3ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller7,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible8a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Rotavírus humano oral - 1ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller8,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible9a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Rotavírus humano oral - 2ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller9,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible10a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Pneumocócica 10 - 1ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller10,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible11a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Pneumocócica 10 - 2ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller11,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible12a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Meningogócica C - 1ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller12,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible13a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Meningogócica C - 2ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller13,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible14a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Influenza - Anualmente foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller14,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            Visibility(
              visible: isVisible15a,
              child: Column(
                children: [
                  Text(
                    'Selecione a data em que a vacina Febre Amarela- 1ª dose foi realizada: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  TextField(
                    inputFormatters: [maskFormatter],
                    controller: controller15,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: topColor,
              ),
              onPressed: () {
                var dateTime0 = DateFormat('d/M/y').parse(controller0.text);
                print(dateTime0);
                var dateTime1 = DateFormat('d/M/y').parse(controller1.text);
                print(dateTime1);
                var dateTime2 = DateFormat('d/M/y').parse(controller2.text);
                print(dateTime2);
                var dateTime3 = DateFormat('d/M/y').parse(controller3.text);
                print(dateTime3);
                var dateTime4 = DateFormat('d/M/y').parse(controller4.text);
                print(dateTime4);
                var dateTime5 = DateFormat('d/M/y').parse(controller5.text);
                print(dateTime5);
                var dateTime6 = DateFormat('d/M/y').parse(controller6.text);
                print(dateTime6);
                var dateTime7 = DateFormat('d/M/y').parse(controller7.text);
                print(dateTime7);
                var dateTime8 = DateFormat('d/M/y').parse(controller8.text);
                print(dateTime8);
                var dateTime9 = DateFormat('d/M/y').parse(controller9.text);
                print(dateTime9);
                var dateTime10 = DateFormat('d/M/y').parse(controller10.text);
                print(dateTime10);
                var dateTime11 = DateFormat('d/M/y').parse(controller11.text);
                print(dateTime11);
                var dateTime12 = DateFormat('d/M/y').parse(controller12.text);
                print(dateTime12);
                var dateTime13 = DateFormat('d/M/y').parse(controller13.text);
                print(dateTime13);
                var dateTime14 = DateFormat('d/M/y').parse(controller14.text);
                print(dateTime14);
                var dateTime15 = DateFormat('d/M/y').parse(controller15.text);
                print(dateTime15);

                //createAlertDialog2(context);
              },
              child: Text(
                "Concluir Simulação do Caso Clínico - Conduta indicada",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
