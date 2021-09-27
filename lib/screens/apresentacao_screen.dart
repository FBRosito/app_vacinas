import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'menu_screen.dart';

class ApresentacaoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ApresentacaoScreenState();
  }
}

class _ApresentacaoScreenState extends State<ApresentacaoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Apresentação"),
            backgroundColor: Colors.blue,
          ),
          body: SfPdfViewer.asset(
            'apresentacao.pdf',
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
                    builder: (context) => MenuScreen(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}