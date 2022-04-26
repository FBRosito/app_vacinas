import 'package:flutter/material.dart';
import 'package:app_vacinas/screens/privacy_screen.dart';
import 'package:string_validator/string_validator.dart' as validator;

class RegistroScreen extends StatefulWidget {
  const RegistroScreen({Key? key}) : super(key: key);

  @override
  _RegistroScreenState createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {
  final formKey = GlobalKey<FormState>();
  var modelo = ModeloRegistro();

  showAlertDialog1(BuildContext context) {
    AlertDialog alerta = AlertDialog(
      title: Text("Registro realizado com sucesso!"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  bool continuarConectado = false;
  double _currentSliderValue = 0;
  bool valorAlarmeMedicamentos = false;
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [topColor, bottomColor]),
        ),
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: Image.asset(
                    "assets/iconeIdentificacao.png",
                    height: 125,
                  ),
                ),
                Text(
                  "Identificação",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  label: 'E-mail',
                  icon: Icons.email_outlined,
                  hint: 'Digite aqui o seu email...',
                  onSaved: (text) => modelo = modelo.copyWith(email: text),
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Esse campo deve ser preenchido!';
                    }
                    if (!validator.isEmail(text)) {
                      return 'Esse campo deve ser preenchido com um email!';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  label: 'Estado',
                  icon: Icons.location_on_sharp,
                  hint: 'Digite o nome de seu Estado...',
                  validator: (text) => text == null || text.isEmpty
                      ? 'Esse campo deve ser preenchido!'
                      : null,
                  onSaved: (text) => modelo = modelo.copyWith(estado: text),
                ),
                SizedBox(height: 15),
                CustomTextField(
                  label: 'Cidade',
                  icon: Icons.location_city,
                  hint: 'Digite o nome de sua cidade...',
                  validator: (text) => text == null || text.isEmpty
                      ? 'Esse campo deve ser preenchido!'
                      : null,
                  onSaved: (text) => modelo = modelo.copyWith(cidade: text),
                ),
                SizedBox(height: 15),
                CustomTextField(
                  label: 'Ocupação',
                  icon: Icons.work,
                  hint: 'Digite a sua ocupação...',
                  validator: (text) => text == null || text.isEmpty
                      ? 'Esse campo deve ser preenchido!'
                      : null,
                  onSaved: (text) => modelo = modelo.copyWith(ocupacao: text),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text('Não', style: TextStyle(color: Colors.white)),
                    Slider.adaptive(
                      value: _currentSliderValue,
                      divisions: 1,
                      activeColor: Colors.white,
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                          if (value == 1) {
                            continuarConectado = true;
                          } else {
                            continuarConectado = false;
                          }
                        });
                      },
                    ),
                    Text('Sim', style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(topColor),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            minimumSize:
                                MaterialStateProperty.all(const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 42, 74, 117),
                                        width: 2.0)))),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PrivacyScreen(),
                              ),
                            );
                            showAlertDialog1(context);
                            print(modelo.email);
                            print(modelo.estado);
                            print(modelo.cidade);
                            print(modelo.ocupacao);
                            print(continuarConectado);
                          }
                        },
                        icon: Icon(Icons.save_alt),
                        label: Text('Registrar'),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(topColor),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            minimumSize:
                                MaterialStateProperty.all(const Size(200, 50)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 42, 74, 117),
                                        width: 2.0)))),
                        onPressed: () {
                          setState(() {});
                          formKey.currentState?.reset();
                        },
                        icon: Icon(Icons.delete),
                        label: Text('Limpar'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final String? hint;
  final IconData? icon;
  final Widget? suffix;
  final String? Function(String? text)? validator;
  final void Function(String? text)? onSaved;

  const CustomTextField({
    Key? key,
    required this.label,
    this.icon,
    this.hint,
    this.validator,
    this.onSaved,
    this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      onSaved: onSaved,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
        ),
        prefixStyle: new TextStyle(color: Colors.white),
        suffixStyle: new TextStyle(color: Colors.white),
        hintStyle: new TextStyle(color: Colors.white),
        labelStyle: new TextStyle(color: Colors.white),
        labelText: label,
        hintText: hint,
        prefixIcon: icon == null ? null : Icon(icon, color: Colors.white),
        suffixIcon: suffix,
      ),
    );
  }
}

class ModeloRegistro {
  final String email;
  final String estado;
  final String cidade;
  String ocupacao;

  ModeloRegistro(
      {this.email = '',
      this.estado = '',
      this.cidade = '',
      this.ocupacao = ''});

  ModeloRegistro copyWith({
    String? email,
    String? estado,
    String? cidade,
    String? ocupacao,
  }) {
    return ModeloRegistro(
      email: email ?? this.email,
      estado: estado ?? this.estado,
      cidade: cidade ?? this.cidade,
      ocupacao: ocupacao ?? this.ocupacao,
    );
  }
}
