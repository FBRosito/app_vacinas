import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class VIPEapvScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VIPEapvScreenState();
  }
}

class _VIPEapvScreenState extends State<VIPEapvScreen> {
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("EAPV - VIP"),
            backgroundColor: topColor,
          ),
          body: SfPdfViewer.asset(
            'assets/eapv_vip.pdf',
          ),
        ),
      ),
    );
  }
}
