import 'dart:async';

import 'package:absen_new/pages/murid/scanned_qr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  String _data = "";

  _scan() async {
    await FlutterBarcodeScanner.scanBarcode(
            "#000000", "cancel", true, ScanMode.QR)
        .then((value) => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (c) => ScannedQr(value),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextButton(
              onPressed: () => _scan(),
              child: Text("scan"),
            ),
            Text(_data)
          ],
        ),
      ),
    );
  }
}
