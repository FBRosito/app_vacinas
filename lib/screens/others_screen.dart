import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class OthersScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OthersScreenState();
  }
}

class _OthersScreenState extends State<OthersScreen> {
  late PdfViewerController _pdfViewerController;
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Guia de Vacinas"),
            backgroundColor: Colors.blue,
          ),
          body: SfPdfViewer.asset(
            'guia_vacinas_product.pdf',
            controller: _pdfViewerController,
            interactionMode: PdfInteractionMode.selection,
          ),
        ),
      ),
    );
  }
}
