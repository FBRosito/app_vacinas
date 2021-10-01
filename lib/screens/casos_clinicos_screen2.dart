import 'package:app_vacinas/screens/imunobiologicos_screen.dart';
import 'package:app_vacinas/screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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

class _CasosClinicosScreen2State extends State<CasosClinicosScreen2> {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '##/##/####', filter: {"#": RegExp(r'[0-8]')});

  createAlertDialog1(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Data das Vacinas Realizadas"),
            content: Column(
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
                ElevatedButton(
                  onPressed: () {
                    createAlertDialog2(context);
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
          );
        });
  }

  createAlertDialog2(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Simulação do Caso Clínico - Conduta indicada"),
            content: Column(
              children: [
                ListTile(
                  title: Text(
                    "Realizar a dose 1 da Vacina Pentavalente (DTP+Hib+Hep B)",
                  ),
                  leading: Icon(
                    Icons.check_box_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Aprazar a dose 2 da Vacina Pentavalente (DTP+Hib+Hep B) para 2 meses",
                  ),
                  leading: Icon(
                    Icons.replay_circle_filled_outlined,
                    color: Colors.orange,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Realizar a dose 1 da Vacina Poliomelite Inativada (VIP)",
                  ),
                  leading: Icon(
                    Icons.check_box_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Aprazar a dose 2 da Vacina Poliomelite Inativada (VIP) para 2 meses",
                  ),
                  leading: Icon(
                    Icons.replay_circle_filled_outlined,
                    color: Colors.orange,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Realizar a dose 1 da Vacina Pneumocócica 10",
                  ),
                  leading: Icon(
                    Icons.check_box_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Aprazar a dose 2 da Vacina Pneumocócica 10 para 2 meses",
                  ),
                  leading: Icon(
                    Icons.replay_circle_filled_outlined,
                    color: Colors.orange,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Realizar a dose 1 da Vacina Meningogócica C",
                  ),
                  leading: Icon(
                    Icons.check_box_outlined,
                    color: Colors.green,
                    size: 30.0,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Aprazar a dose 2 da Vacina Meningogócica C para 2 meses",
                  ),
                  leading: Icon(
                    Icons.replay_circle_filled_outlined,
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
                ListTile(
                  title: Text(
                    "Sempre verificar as contraindicações de cada imunobiológico",
                  ),
                  leading: Icon(
                    Icons.warning,
                    color: Colors.yellow[600],
                    size: 30.0,
                  ),
                  subtitle: Text(
                      'Clique aqui para acessar o menu de Imunobiológicos'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImunoScreen(),
                      ),
                    );
                  },
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
        title: Text(
            "Clique nas vacinas que o usuário realizou e escreva a data: "),
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
            "Data de realização das vacinas",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            createAlertDialog1(context);
          },
        ),
      ),
    );
  }
}
