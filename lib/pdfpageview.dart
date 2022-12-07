
// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:pdf_view/pdfmaker.dart';
import 'package:printing/printing.dart';


class PdfPreviewPage extends StatelessWidget {
  final invoice;
  String number,name;
  
  PdfPreviewPage({Key? key, 
    required this.number,
    required this.name,
    required this.invoice
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("My Fees PDF")
      ),
      body: Scaffold(
        body: PdfPreview(
          build: (context1) => makePdf(context, invoice, context1, number, name),
        ),
      ),
    );
  }
}

