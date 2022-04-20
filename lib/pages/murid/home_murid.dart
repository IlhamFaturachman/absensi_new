// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/pages/murid/history_murid.dart';
import 'package:absen_new/pages/murid/profile_murid.dart';
import 'package:absen_new/pages/murid/scanned_qr.dart';
import 'package:absen_new/widgets/guru/navbarguru.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:intl/intl.dart';

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
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        titleSpacing: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => ProfileMurid(),
                ),
              );
            },
            child: Image(
              image: AssetImage("assets/images/profpic.jpg"),
            ),
          ),
        ),
        title: Text(
          "Hi, Achmad Rizqy",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
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
                        fontSize: bodyWidth * 0.09,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Center(
                  child: Container(
                    height: bodyHeight * 0.33,
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
                                    left: size.width * 0.45,
                                    top: size.width * 0.08, right: size.width * 0.1),
                                child: Container(
                                  height: bodyHeight * 0.068,
                                  child: Text(
                                    DateFormat('KK:mm').format(
                                      DateTime.now(),
                                    ),
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: bodyWidth * 0.13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: size.width * 0.1, top: size.height * 0.03),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: size.width * 0,
                                          top: size.width * 0.15),
                                      child: Container(
                                        height: bodyHeight * 0.053,
                                        child: Text(
                                          DateFormat('EEEE').format(
                                        DateTime.now(),
                                      ),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: bodyWidth * 0.08,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: size.width * 0.0,
                                          top: size.width * 0.0),
                                      child: Container(
                                        height: bodyHeight * 0.053,
                                        child: Text(
                                          DateFormat('yyyy-MM-dd').format(
                                        DateTime.now(),
                                      ),
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
              ),
            ],
          ),
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
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: bodyHeight * 0.08,
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
                            size: bodyHeight * 0.045,
                            color: Colors.white,
                          ),
                          Text("Profile",
                              style: TextStyle(
                                  fontSize: bodyWidth * 0.035,
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
                            size: bodyHeight * 0.045,
                            color: Colors.white,
                          ),
                          Text("History",
                              style: TextStyle(
                                  fontSize: bodyWidth * 0.035,
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
