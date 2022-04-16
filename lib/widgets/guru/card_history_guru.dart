// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:flutter/material.dart';

class CardHistoryGuru extends StatefulWidget {
  const CardHistoryGuru(
      {Key? key,
      required this.mapel,
      required this.jam,
      required this.hari,
      required this.tanggal})
      : super(key: key);

  final String mapel, jam, hari, tanggal;

  @override
  State<CardHistoryGuru> createState() => _CardHistoryGuru();
}

class _CardHistoryGuru extends State<CardHistoryGuru> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.005, right: size.width * 0.05),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.0055),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      color: mainColour,
                    ),
                    height: size.height * 0.12,
                    width: size.width * 0.1,
                  ),
                ),
                Container(
                  height: size.height * 0.13,
                  width: size.width * 0.8,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1, left: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: listColor,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.03, top: size.width * 0.05),
                                child: Text(
                                  widget.mapel,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.28, top: size.width * 0.05),
                                child: Text(
                                  widget.hari,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.03, top: size.width * 0.05),
                                child: Text(
                                  widget.jam,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.32, top: size.width * 0.05),
                                child: Text(
                                  widget.tanggal,
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
        ],
      ),
    );
  }
}
