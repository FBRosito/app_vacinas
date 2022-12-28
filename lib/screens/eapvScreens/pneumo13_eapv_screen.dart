import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Pneumo13EapvScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Pneumo13EapvScreenState();
  }
}

class _Pneumo13EapvScreenState extends State<Pneumo13EapvScreen> {
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("EAPV - Pneumocócica 13"),
            backgroundColor: topColor,
          ),
          body: SfPdfViewer.asset(
            'assets/eapv_pneumo13.pdf',
          ),
        ),
      ),
    );
  }
}
