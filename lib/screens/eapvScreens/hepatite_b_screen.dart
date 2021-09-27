import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class HepatiteBScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HepatiteBScreenState();
  }
}

class _HepatiteBScreenState extends State<HepatiteBScreen> {
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
            'guia_vacinas_product.pdf',
          ),
        ),
      ),
    );
  }
}
