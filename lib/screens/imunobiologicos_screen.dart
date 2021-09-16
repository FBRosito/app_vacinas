import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'menu_screen.dart';

class ImunobiologicosScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImunobiologicosScreenState();
  }
}

class _ImunobiologicosScreenState extends State<ImunobiologicosScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Imunobiológicos",
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
            "Voltar",
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
