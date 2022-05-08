// // ignore_for_file: unused_field, prefer_final_fields

// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class Scanner extends StatefulWidget {
//   const Scanner({Key? key}) : super(key: key);

//   @override
//   State<Scanner> createState() => _ScannerState();
// }

// class _ScannerState extends State<Scanner> {
//   String _data = "";
//   bool _flashOn = false;
//   bool _frontCam = false;
//   Barcode? result;
//   GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
//   QRViewController? _controller;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Stack(
//           children: [
//             QRView(
//               key: _qrKey,
//               overlay: QrScannerOverlayShape(borderColor: Colors.white),
//               onQRViewCreated: (QRViewController controller) {
//                 this._controller = controller;
//                 controller.scannedDataStream.listen((scanData) {
//                   setState(() {
//                     result = scanData;
//                   });
//                  });
//               },
//             ),
//             Align(
//               alignment: Alignment.topCenter,
//               child: Container(
//                 child: Text(
//                   "Scanner",
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: ButtonBar(
//                 alignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   IconButton(
//                     onPressed: () {
//                       _controller?.toggleFlash;
//                       setState(() {
//                         _flashOn = !_flashOn;
//                       });
//                     },
                    
//                     icon: Icon(_flashOn ? Icons.flash_on : Icons.flash_off),
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       _controller?.toggleFlash;
//                       setState(() {
//                         _frontCam = !_frontCam;
//                       });
//                     },
                    
//                     icon: Icon(_frontCam ? Icons.camera_front : Icons.camera_rear),
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       _controller?.toggleFlash;
//                       setState(() {
//                         _flashOn = !_flashOn;
//                       });
//                     },
                    
//                     icon: Icon(_flashOn ? Icons.flash_on : Icons.flash_off),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
