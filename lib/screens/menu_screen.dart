import 'dart:ui';
import 'package:app_vacinas/screens/casos_clinicos_screen1.dart';
import 'package:flutter/material.dart';
import 'eapv_screen.dart';
import 'imunobiologicos_screen.dart';
import 'others_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[400],
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
                            builder: (context) => OthersScreen(),
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
                        "Recomendações Gerais",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
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
                        "Calendários Vacinais",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
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
                        "Referências e Créditos",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
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
