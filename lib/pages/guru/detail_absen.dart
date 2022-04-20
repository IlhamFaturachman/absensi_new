// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_typing_uninitialized_variables

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/pages/guru/input_absen.dart';
import 'package:absen_new/pages/guru/list_murid.dart';
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
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyWidth = mediaQueryWidth;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * 0.045, size.height * 0.02, 0, 0),
              child: Container(
                height: bodyHeight * 0.1,
                width: bodyWidth,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => InputAbsenGuru());
                        Navigator.push(context, route);
                      },
                      child: Container(
                        child: Icon(
                          Icons.arrow_back,
                          size: bodyHeight * 0.05,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.04),
                      child: Container(
                        height: bodyHeight * 0.06,
                        width: bodyWidth * 0.8,
                        child: Text(
                          widget.judul,
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
              padding: EdgeInsets.only(top: 10),
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
                    size: bodyHeight * 0.2,
                    gapless: false,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: bodyWidth * 0.85,
                      height: bodyHeight * 0.03,
                      child: Text(
                        "Subject",
                        style: TextStyle(
                            fontSize: bodyWidth * 0.05,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.075,
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
                                fontWeight: FontWeight.bold,
                                fontSize: bodyWidth * 0.05),
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
                              fontSize: bodyWidth * 0.05,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.075,
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
                                fontWeight: FontWeight.bold,
                                fontSize: bodyWidth * 0.05),
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
                              fontSize: bodyWidth * 0.05,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.125,
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
                                fontWeight: FontWeight.bold,
                                fontSize: bodyWidth * 0.05),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Container(
                            child: Text(
                              "Student",
                              style: TextStyle(
                                  fontSize: bodyWidth * 0.05,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => ListMurid());
                            Navigator.push(context, route);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: size.width * 0.04, left: size.width * 0.5),
                            child: Container(
                              child: Text(
                                "see all",
                                style: TextStyle(
                                    fontSize: bodyWidth * 0.05,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: formColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: bodyWidth * 0.25,
                                      height: bodyHeight * 0.08,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          "25",
                                          style: TextStyle(
                                              fontSize: bodyWidth * 0.07,
                                              color: secondaryColour),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Container(
                                        child: Text(
                                          "on time",
                                          style: TextStyle(
                                              fontSize: bodyWidth * 0.04,
                                              color: secondaryColour),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: bodyWidth * 0.25,
                                      height: bodyHeight * 0.08,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          "8",
                                          style: TextStyle(
                                              fontSize: bodyWidth * 0.07,
                                              color: redColor),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Container(
                                        child: Text(
                                          "late",
                                          style: TextStyle(
                                              fontSize: bodyWidth * 0.04,
                                              color: redColor),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: bodyWidth * 0.25,
                                      height: bodyHeight * 0.08,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: bodyWidth * 0.07),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Container(
                                        child: Text("other",
                                            style: TextStyle(
                                              fontSize: bodyWidth * 0.04,
                                            )),
                                      ),
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
    );
  }
}
