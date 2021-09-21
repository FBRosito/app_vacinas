import 'package:app_vacinas/screens/imunobiologicos_screen.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class HepBEapvScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HepBEapvScreenState();
  }
}

class _HepBEapvScreenState extends State<HepBEapvScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Hepatite B",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SfPdfViewer.network(
          'https://docs.google.com/document/d/1qlbdE5gMjXf7BeaGzO9qEjaCk35z8BlM/export?format=pdf&ouid=103452109716217312813&rtpof=true&sd=true',
        ),
        bottomNavigationBar: FractionallySizedBox(
          heightFactor: 0.06,
          widthFactor: 1,
          child: ElevatedButton(
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
                  builder: (context) => ImunobiologicosScreen(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
