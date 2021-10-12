import 'package:app_vacinas/screens/termos_compromisso.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PrivacyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PrivacyScreenState();
  }
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Política de Privacidade",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: topColor,
        ),
        body: SfPdfViewer.asset(
          'assets/politica_privacidade.pdf',
        ),
        bottomNavigationBar: FractionallySizedBox(
          heightFactor: 0.06,
          widthFactor: 1,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: topColor,
            ),
            child: Text(
              "Aceitar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TermosCompromissoScreen(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
