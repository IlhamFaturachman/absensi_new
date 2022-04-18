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
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyWidth = mediaQueryWidth;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.08, top: size.height * 0.04),
              child: Container(
                height: bodyHeight * 0.1,
                width: bodyWidth,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => ProfileMurid());
                        Navigator.push(context, route);
                      },
                      child: Container(
                        height: bodyHeight * 0.075,
                        width: bodyWidth * 0.15,
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
                              fontSize: bodyWidth * 0.07,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: size.width * 0.35, top: size.height * 0.05),
              child: Container(
                height: bodyHeight * 0.06,
                width: bodyWidth,
                child: Text(
                  "Good Morning",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: bodyWidth * 0.09, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.width * 0.0, left: size.width * 0.03),
              child: Container(
                height: bodyHeight * 0.31,
              width: bodyWidth * 0.9,
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
                            child: Container(
                              height: bodyHeight * 0.05,
                              child: Text(
                                "",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: bodyWidth * 0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.5, top: size.width * 0.05),
                            child: Container(
                              height: bodyHeight * 0.065,
                              child: Text(
                                "08.00",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: bodyWidth * 0.115,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
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
                                    right: size.width * 0.16,
                                    top: size.width * 0.15),
                                child: Container(
                                  height: bodyHeight * 0.05,
                                  child: Text(
                                    "Friday",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: bodyWidth * 0.075,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: size.width * 0.04,
                                    top: size.width * 0.0),
                                child: Container(
                                  height: bodyHeight * 0.05,
                                  child: Text(
                                    "22 April 2022",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: bodyWidth * 0.075,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
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
                                fontSize: bodyWidth * 0,
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
          width: bodyWidth * 0.23,
          height: bodyHeight * 0.13,
          child: FittedBox(
              child: FloatingActionButton(
                  backgroundColor: secondaryColour,
                  onPressed: () => _scan(),
                  child: Icon(
                    Icons.qr_code_scanner,
                    size: bodyHeight * 0.04,
                  )))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: bodyHeight * 0.085,
        child: BottomAppBar(
          color: mainColour,
          shape: CircularNotchedRectangle(),
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
                    child: Container(
                      height: bodyHeight * 0.08,
                      child: Column(
                        children: [
                          Icon(
                            Icons.person,
                            size: bodyHeight * 0.05,
                            color: Colors.white,
                          ),
                          Text("Profile",
                              style: TextStyle(
                                  fontSize: bodyWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
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
                    child: Container(
                      height: bodyHeight * 0.08,
                      child: Column(
                        children: [
                          Icon(
                            Icons.history,
                            size: bodyHeight * 0.05,
                            color: Colors.white,
                          ),
                          Text("History",
                              style: TextStyle(
                                  fontSize: bodyWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
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
