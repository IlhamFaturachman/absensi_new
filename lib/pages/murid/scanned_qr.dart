// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:flutter/material.dart';

class ScannedQr extends StatefulWidget {
  final Value;
  const ScannedQr(this.Value);

  @override
  State<ScannedQr> createState() => _ScannedQrState();
}

class _ScannedQrState extends State<ScannedQr> {
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
              padding: EdgeInsets.only(top: size.height * 0.03, left: 10),
              child: Center(
                child: Container(
                  height: bodyHeight * 0.1,
                  width: bodyWidth * 1,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          //
                        },
                        child: Container(
                          height: bodyHeight * 0.08,
                          width: bodyWidth * 0.15,
                          child: Image(
                            image: AssetImage("assets/images/scanned.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.04),
                        child: Container(
                          height: bodyHeight * 0.05,
                          width: bodyWidth * 0.7,
                          child: Text(
                            "Hi, Achmad Rizqi Taqiyudin",
                            style: TextStyle(
                                fontSize: bodyWidth * 0.05, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.05),
              child: Container(
                height: bodyHeight * 0.05,
                width: bodyWidth * 0.55,
                child: Text(
                  "Succesfully Attend!",
                  style: TextStyle(fontSize: bodyWidth * 0.06, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                width: bodyWidth * 0.7,
                height: bodyHeight * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: mainColour,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.04),
                      child: Container(
                        width: bodyHeight * 0.15,
                        height: bodyHeight * 0.15,
                        decoration: BoxDecoration(
                            color: secondaryColour,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.check_rounded,
                          color: Colors.white,
                          size: bodyHeight * 0.15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Container(
                        height: bodyHeight * 0.15,
                        width: bodyWidth * 0.5,
                        child: Center(
                          child: Text(
                            widget.Value,
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
