// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/pages/murid/history_murid.dart';
import 'package:absen_new/pages/murid/profile_murid.dart';
import 'package:absen_new/pages/murid/scanned_qr.dart';
import 'package:absen_new/widgets/guru/navbarguru.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomePageMurid extends StatefulWidget {
  const HomePageMurid({Key? key}) : super(key: key);

  @override
  State<HomePageMurid> createState() => _HomePageMuridState();
}

class _HomePageMuridState extends State<HomePageMurid> {
  String _data = "";

  _scan() async {
    await FlutterBarcodeScanner.scanBarcode(
            "#000000", "cancel", true, ScanMode.QR)
        .then(
      (value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (c) => ScannedQr(value),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.08, top: size.height * 0.03),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      //
                    },
                    child: Container(
                      height: size.height * 0.075,
                      width: size.width * 0.1,
                      child: Image(
                        image: AssetImage("assets/images/profpic.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.04),
                    child: Container(
                      child: Text(
                        "Hi, Achmad Rizqi",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: size.width * 0.3, top: size.height * 0.05),
              child: Container(
                child: Text(
                  "Good Morning",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: size.height * 0.3,
              width: size.width * 0.9,
              child: Padding(
                padding: EdgeInsets.only(
                    top: size.width * 0.02, left: size.width * 0.03),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  color: mainColour,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.03,
                                top: size.width * 0.05),
                            child: Text(
                              "",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.5, top: size.width * 0.05),
                            child: Text(
                              "08.00",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: size.width * 0.15,
                                    top: size.width * 0.2),
                                child: Text(
                                  "Friday",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: size.width * 0.04,
                                    top: size.width * 0.01),
                                child: Text(
                                  "22 April 2022",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.32,
                                top: size.width * 0.05),
                            child: Text(
                              "",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
          width: 80,
          height: 80,
          child: FittedBox(
              child: FloatingActionButton(
                  backgroundColor: secondaryColour,
                  onPressed: () => _scan(),
                  child: Icon(Icons.qr_code_scanner)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: mainColour,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 70,
          child: Padding(
            padding: EdgeInsets.only(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => ProfileMurid(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.15, top: size.height * 0.005),
                    child: Column(
                      children: [
                        Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text("Profile",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                SizedBox.shrink(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => HistoryMurid(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: size.width * 0.15, top: size.height * 0.005),
                    child: Column(
                      children: [
                        Icon(
                          Icons.history,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text("History",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
