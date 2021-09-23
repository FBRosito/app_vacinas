import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class OthersScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OthersScreenState();
  }
}

class _OthersScreenState extends State<OthersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RotatedBox(
          quarterTurns: 1,
          child: SfPdfViewer.asset(
            'guia_vacinas_product.pdf',
            canShowPaginationDialog: true,
            canShowScrollHead: true,
            canShowScrollStatus: true,
            enableDoubleTapZooming: true,
            enableTextSelection: true,
            enableDocumentLinkAnnotation: true,
          ),
        ),
      ),
    );
  }
}
