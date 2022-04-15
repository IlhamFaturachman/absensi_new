// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_typing_uninitialized_variables

import 'package:absen_new/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DetailAbsen extends StatefulWidget {
  final judul;
  final subjectValue;
  final classValue;
  final tanggal;
  final jamawal;
  final jamakhir;
  // ignore: use_key_in_widget_constructors
  const DetailAbsen(
    this.judul,
    this.subjectValue,
    this.classValue,
    this.tanggal,
    this.jamawal,
    this.jamakhir,
  );

  @override
  State<DetailAbsen> createState() => _DetailAbsenState();
}

class _DetailAbsenState extends State<DetailAbsen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.045, size.height * 0.05, 0, 0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          //
                        },
                        child: Container(
                          child: Icon(
                            Icons.arrow_back,
                            size: 40,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.04),
                        child: Container(
                          child: Text(
                            widget.judul,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: Container(
                    child: QrImage(
                      data: widget.judul +
                          " " +
                          widget.subjectValue +
                          " " +
                          widget.classValue +
                          " " +
                          widget.tanggal +
                          " " +
                          widget.jamawal +
                          " " +
                          widget.jamakhir,
                      version: QrVersions.auto,
                      size: size.height * 0.2,
                      gapless: false,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Subject",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.01),
                        child: Container(
                          width: size.width * 0.85,
                          height: size.height * 0.075,
                          child: TextFormField(
                            readOnly: true,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: formColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                              fillColor: formColor,
                              filled: true,
                              hintText: widget.subjectValue,
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Container(
                          child: Text(
                            "Class",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.01),
                        child: Container(
                          width: size.width * 0.85,
                          height: size.height * 0.075,
                          child: TextFormField(
                            readOnly: true,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: formColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                              fillColor: formColor,
                              filled: true,
                              hintText: widget.classValue,
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Container(
                          child: Text(
                            "Date & Time",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.01),
                        child: Container(
                          width: size.width * 0.85,
                          height: size.height * 0.125,
                          child: TextFormField(
                            minLines: 1,
                            maxLines: 5,
                            readOnly: true,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: formColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                              fillColor: formColor,
                              filled: true,
                              hintText: widget.tanggal +
                                  "\n" +
                                  widget.jamawal +
                                  " - " +
                                  widget.jamakhir,
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Container(
                          child: Text(
                            "Student",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.01),
                        child: Container(
                          width: size.width * 0.85,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: formColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: size.width * 0.25,
                                        height: size.height * 0.08,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            "25",
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: secondaryColour),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "on time",
                                          style:
                                              TextStyle(color: secondaryColour),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: size.width * 0.25,
                                        height: size.height * 0.08,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            "8",
                                            style: TextStyle(
                                                fontSize: 25, color: redColor),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "late",
                                          style: TextStyle(color: redColor),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: size.width * 0.25,
                                        height: size.height * 0.08,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Center(
                                          child: Text(
                                            "4",
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text("other"),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
