import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'calendarios_vacinais_screen.dart';

class CalendarioPrematuroScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendarioPrematuroScreenState();
  }
}

class _CalendarioPrematuroScreenState extends State<CalendarioPrematuroScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Prematuro",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SfPdfViewer.network(
          'https://docs.google.com/document/d/19VR0bzn5HHLq6ngsbAVLY0voHdDdI9zN/export?format=pdf&ouid=103452109716217312813&rtpof=true&sd=true',
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
                  builder: (context) => CalendariosVacinaisScreen(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
