// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/pages/guru/detail_absen.dart';
import 'package:absen_new/pages/guru/input_absen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormInputAbsen extends StatefulWidget {
  const FormInputAbsen(
      {key,
      required this.judulcontroller,
      required this.tanggalcontroller,
      required this.jamawalcontroller,
      required this.jamakhircontroller})
      : super(key: key);

  final TextEditingController judulcontroller;
  final TextEditingController tanggalcontroller;
  final TextEditingController jamawalcontroller;
  final TextEditingController jamakhircontroller;

  @override
  State<FormInputAbsen> createState() => _FormInputAbsenState();
}

class _FormInputAbsenState extends State<FormInputAbsen> {
  final subjectItems = [
    'Pemrograman Dasar',
    'Bahasa Indonesia',
    'PWPB',
    'Bahasa Daerah'
  ];
  final classItems = ['X RPL A', 'XI RPL A', 'XII RPL A', 'XII ANIM A'];
  String? subjectValue;
  String? classValue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width * 1,
          height: size.height * 0.75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.08, top: size.height * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Title",
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
                        controller: widget.judulcontroller,
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
                          hintText: 'Pertemuan 1',
                          hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.015),
                    child: Container(
                      child: Text(
                        "Subject",
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
                      height: size.height * 0.1,
                      child: DropdownButtonFormField(
                        hint: Text(
                          "Select Subject",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        items: subjectItems.map(buildMenuSubject).toList(),
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
                        ),
                        value: subjectValue,
                        onChanged: (String? selectedNewValue) {
                          setState(
                            () {
                              subjectValue = selectedNewValue;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.01),
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
                      height: size.height * 0.1,
                      child: DropdownButtonFormField(
                        hint: Text(
                          "Select Class",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        items: classItems.map(buildMenuClass).toList(),
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
                        ),
                        value: classValue,
                        onChanged: (String? selectedNewValue) {
                          setState(
                            () {
                              classValue = selectedNewValue;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.01),
                    child: Container(
                      child: Text(
                        "Schedule Date",
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
                        controller: widget.tanggalcontroller,
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
                          hintText: 'Pertemuan 1',
                          hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.015),
                    child: Container(
                      child: Text(
                        "Schedule Time",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.01),
                          child: Container(
                            width: size.width * 0.35,
                            height: size.height * 0.075,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.jamawalcontroller,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: formColor),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                fillColor: formColor,
                                filled: true,
                                hintText: '08.00',
                                hintStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 50),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.01),
                          child: Container(
                            width: size.width * 0.35,
                            height: size.height * 0.075,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: widget.jamakhircontroller,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: formColor),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                fillColor: formColor,
                                filled: true,
                                hintText: '10.00',
                                hintStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.02),
          child: Container(
            height: size.height * 0.06,
            width: size.width * 0.35,
            decoration: BoxDecoration(
                color: mainColour, borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => DetailAbsen(
                        judulcontroller.text,
                        subjectValue,
                        classValue,
                        tanggalcontroller.text,
                        jamawalcontroller.text,
                        jamakhircontroller.text),
                  ),
                );
              },
              child: Text(
                "Create",
                style: TextStyle(
                    fontSize: 20, color: Colors.white, fontFamily: 'Poppins'),
              ),
            ),
          ),
        )
      ],
    );
  }

  DropdownMenuItem<String> buildMenuSubject(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      );
  DropdownMenuItem<String> buildMenuClass(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      );
}
