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
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.1, left: 10),
              child: Center(
                child: Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          //
                        },
                        child: Container(
                          height: size.height * 0.09,
                          width: size.width * 0.15,
                          child: Image(
                            image: AssetImage("assets/images/scanned.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.04),
                        child: Container(
                          child: Text(
                            "Hi, Achmad Rizqi Taqiyudin",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.17),
              child: Container(
                child: Text(
                  "Succesfully Attend!",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                width: size.width * 0.7,
                height: size.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: mainColour,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.04),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: secondaryColour,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.check_rounded,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        child: Text(
                          widget.Value,
                          style: TextStyle(color: Colors.white, fontSize: 23),
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
