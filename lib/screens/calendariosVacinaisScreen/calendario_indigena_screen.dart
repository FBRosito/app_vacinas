import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CalendarioIndigenaScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendarioIndigenaScreenState();
  }
}

class _CalendarioIndigenaScreenState extends State<CalendarioIndigenaScreen> {
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Calendário Vacinal - Indigena"),
            backgroundColor: topColor,
          ),
          body: SfPdfViewer.asset(
            'assets/calendario_indigena.pdf',
          ),
        ),
      ),
    );
  }
}
