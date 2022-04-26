import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'menu_screen.dart';

class RecomendacoesGeraisScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RecomendacoesGeraisScreenState();
  }
}

class _RecomendacoesGeraisScreenState extends State<RecomendacoesGeraisScreen> {
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Recomendações Gerais"),
            backgroundColor: topColor,
          ),
          body: SfPdfViewer.asset(
            'assets/recomendacoes_gerais.pdf',
          ),
          bottomNavigationBar: FractionallySizedBox(
            heightFactor: 0.06,
            widthFactor: 1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: topColor,
              ),
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
