import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Pneumo10EapvScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Pneumo10EapvScreenState();
  }
}

class _Pneumo10EapvScreenState extends State<Pneumo10EapvScreen> {
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("EAPV - Pneumocócica 10"),
            backgroundColor: topColor,
          ),
          body: SfPdfViewer.asset(
            'assets/eapv_pneumo10.pdf',
          ),
        ),
      ),
    );
  }
}
