import 'package:app_vacinas/screens/casos_clinicos_screen2.dart';
import 'package:flutter/material.dart';

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CasosClinicosScreen1 extends StatefulWidget {
  const CasosClinicosScreen1({Key? key}) : super(key: key);

  @override
  _CasosClinicosScreen1State createState() => _CasosClinicosScreen1State();
}

class _CasosClinicosScreen1State extends State<CasosClinicosScreen1> {
  String dropdownValue = 'Selecione o sexo do usuário';
  final formKey = GlobalKey<FormState>();
  var modelo = ModeloUsuario();

  var maskFormatter = new MaskTextInputFormatter(
      mask: '##/##/####', filter: {"#": RegExp(r'[0-8]')});

  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  TextEditingController nomeController = TextEditingController();
  DateTime dataNascimentoUsuario = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digite idade e sexo do usuário: "),
        backgroundColor: topColor,
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 100)),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: DropdownButton<String>(
                isExpanded: true,
                dropdownColor: topColor,
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_downward,
                  color: Colors.black,
                ),
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                underline: Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'Selecione o sexo do usuário',
                  'Masculino',
                  'Feminino'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 50)),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Text(
                'Escreva a data de nascimento do usuário: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: TextFormField(
                key: formKey,
                controller: nomeController,
                inputFormatters: [maskFormatter],
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                validator: (text) => text == null || text.isEmpty
                    ? 'Esse campo deve ser preenchido!'
                    : null,
                onSaved: (text) =>
                    modelo = modelo.copyWith(dataNascimento: text),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 100)),
            Padding(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: ElevatedButton(
                child: Text(
                  "Continuar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  print(modelo.sexo);
                  print(dataNascimentoUsuario);
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CasosClinicosScreen2(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: topColor,
                  fixedSize: Size(320, 60),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ModeloUsuario {
  String sexo;
  final String dataNascimento;

  ModeloUsuario({this.sexo = '', this.dataNascimento = ''});

  ModeloUsuario copyWith({
    String? sexo,
    String? dataNascimento,
  }) {
    return ModeloUsuario(
      sexo: sexo ?? this.sexo,
      dataNascimento: dataNascimento ?? this.dataNascimento,
    );
  }
}
