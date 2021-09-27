import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class HepatiteBEapvScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HepatiteBEapvScreenState();
  }
}

class _HepatiteBEapvScreenState extends State<HepatiteBEapvScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("EAPV - Hepatite B"),
            backgroundColor: Colors.blue,
          ),
          body: SfPdfViewer.asset(
            'hepatite_b_eapv.pdf',
          ),
        ),
      ),
    );
  }
}
