import 'package:app_vacinas/screens/casos_clinicos_screen2.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CasosClinicosScreen3 extends StatefulWidget {
  const CasosClinicosScreen3({Key? key}) : super(key: key);

  @override
  _CasosClinicosScreen3State createState() => _CasosClinicosScreen3State();
}

class _CasosClinicosScreen3State extends State<CasosClinicosScreen3> {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '##/##/####', filter: {"#": RegExp(r'[0-8]')});

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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
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
                  TextField(inputFormatters: [maskFormatter]),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: topColor,
              ),
              onPressed: () {
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
