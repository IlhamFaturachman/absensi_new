// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/dummy/isi_hitory_guru.dart';
import 'package:absen_new/dummy/isi_hitory_murid.dart';
import 'package:absen_new/dummy/isi_list_murid.dart';
import 'package:absen_new/pages/guru/home.dart';
import 'package:absen_new/pages/guru/input_absen.dart';
import 'package:flutter/material.dart';

class HistoryGuru extends StatefulWidget {
  const HistoryGuru({Key? key}) : super(key: key);

  @override
  State<HistoryGuru> createState() => _HistoryGuru();
}

class _HistoryGuru extends State<HistoryGuru> {
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
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (c) => HomePageGuru(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          "History",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Container(
                height: bodyHeight * 0.9,
                width: bodyWidth,
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.03,
                          left: size.width * 0.08,
                          bottom: size.height * 0.0),
                      child: IsiHistoryGuru(),
                    ),
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
