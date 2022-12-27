import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CalendarioCriancaAoHIVScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendarioCriancaAoHIVScreenState();
  }
}

class _CalendarioCriancaAoHIVScreenState extends State<CalendarioCriancaAoHIVScreen> {
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Calendário Vacinal - Criança Exposta ao HIV"),
            backgroundColor: topColor,
          ),
          body: SfPdfViewer.asset(
            'assets/calendario_crianca_exposta_hiv.pdf',
          ),
        ),
      ),
    );
  }
}
