import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Covid19EapvScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Covid19EapvScreenState();
  }
}

class _Covid19EapvScreenState extends State<Covid19EapvScreen> {
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("EAPV - COVID-19"),
            backgroundColor: topColor,
          ),
          body: SfPdfViewer.asset(
            'assets/eapv_covid19.pdf',
          ),
        ),
      ),
    );
  }
}
