import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class TripliceViralEapvScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TripliceViralEapvScreenState();
  }
}

class _TripliceViralEapvScreenState extends State<TripliceViralEapvScreen> {
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("EAPV - Tríplice Viral (SRC)"),
            backgroundColor: topColor,
          ),
          body: SfPdfViewer.asset(
            'assets/eapv_tripliceviral.pdf',
          ),
        ),
      ),
    );
  }
}
