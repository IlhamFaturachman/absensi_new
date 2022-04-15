// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:flutter/material.dart';

class CardListMurid extends StatefulWidget {
  const CardListMurid({Key? key, required this.nama, required this.jam})
      : super(key: key);

  final String nama, jam;

  @override
  State<CardListMurid> createState() => _CardListMurid();
}

class _CardListMurid extends State<CardListMurid> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.05, left: size.width * 0.08),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.0055),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        color: secondaryColour,
                      ),
                      height: size.height * 0.07,
                      width: size.width * 0.1,
                    ),
                  ),
                  Container(
                    height: size.height * 0.08,
                    width: size.width * 0.8,
                    child: Padding(
                      padding: EdgeInsets.only(top: 1, left: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        color: formColor,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: size.width * 0.03),
                              child: Text(
                                widget.nama,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: size.width * 0.38),
                              child: Text(
                                widget.jam,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
