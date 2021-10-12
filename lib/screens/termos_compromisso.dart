import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'menu_screen.dart';

class TermosCompromissoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TermosCompromissoScreenState();
  }
}

class _TermosCompromissoScreenState extends State<TermosCompromissoScreen> {
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Termos de Uso",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: topColor,
        ),
        body: SfPdfViewer.asset(
          'assets/termos_compromisso.pdf',
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
                  builder: (context) => MenuScreen(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
