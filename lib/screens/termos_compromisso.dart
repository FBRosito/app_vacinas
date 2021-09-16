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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Termos de Compromisso",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SfPdfViewer.asset(
          'teste.pdf',
        ),
        bottomNavigationBar: ElevatedButton(
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
    );
  }
}