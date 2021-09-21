import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'eapv_screen.dart';

class NotificacoesEapvScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NotificacoesEapvScreenState();
  }
}

class _NotificacoesEapvScreenState extends State<NotificacoesEapvScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Notificações",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SfPdfViewer.network(
          'https://docs.google.com/document/d/1PZkIYFiOs1XAogzUeit6yjfff96hYxCu/export?format=pdf&ouid=103452109716217312813&rtpof=true&sd=true',
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
                  builder: (context) => EapvScreen(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
