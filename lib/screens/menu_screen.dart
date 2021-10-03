import 'dart:ui';
import 'package:app_vacinas/screens/apresentacao_screen.dart';
import 'package:app_vacinas/screens/calendarios_vacinais_screen.dart';
import 'package:app_vacinas/screens/casos_clinicos_screen1.dart';
import 'package:app_vacinas/screens/recomendacoes_gerais_screen.dart';
import 'package:app_vacinas/screens/referencias_creditos_screen.dart';
import 'package:flutter/material.dart';
import 'eapv_screen.dart';
import 'imunobiologicos_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 50,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: 15,
                ),
              ),
              Text(
                "Menu Principal",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(bottom: 40)),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 15,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ApresentacaoScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Apresentação",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: topColor,
                        fixedSize: Size(240, 80),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecomendacoesGeraisScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Recomendações Gerais",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: topColor,
                        fixedSize: Size(240, 80),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImunoScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Imunobiológicos",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: topColor,
                        fixedSize: Size(240, 80),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CalendariosVacinaisScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Calendários Vacinais",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: topColor,
                        fixedSize: Size(240, 80),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EapvScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Eventos Adversos Pós Vacinais - EAPV",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: topColor,
                        fixedSize: Size(240, 80),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CasosClinicosScreen1(),
                          ),
                        );
                      },
                      child: Text(
                        "Casos Clínicos",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: topColor,
                        fixedSize: Size(240, 80),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReferenciasCreditosScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Referências e Créditos",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: topColor,
                        fixedSize: Size(240, 80),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
