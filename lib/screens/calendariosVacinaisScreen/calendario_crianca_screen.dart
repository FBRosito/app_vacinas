import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CalendarioCriancaScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendarioCriancaScreenState();
  }
}

class _CalendarioCriancaScreenState extends State<CalendarioCriancaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Calendário Vacinal - Criança"),
            backgroundColor: Colors.blue,
          ),
          body: SfPdfViewer.network(
            'https://docs.google.com/document/d/1MFd92rxW_wwN1y4XH9vmwU53YF4QZkhP/export?format=pdf&ouid=103452109716217312813&rtpof=true&sd=true',
          ),
        ),
      ),
    );
  }
}
