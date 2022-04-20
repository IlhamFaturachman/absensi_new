// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/dummy/isi_hitory_murid.dart';
import 'package:absen_new/dummy/isi_list_murid.dart';
import 'package:absen_new/pages/guru/input_absen.dart';
import 'package:absen_new/pages/murid/home_murid.dart';
import 'package:flutter/material.dart';

class HistoryMurid extends StatefulWidget {
  const HistoryMurid({Key? key}) : super(key: key);

  @override
  State<HistoryMurid> createState() => _HistoryMurid();
}

class _HistoryMurid extends State<HistoryMurid> {
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
                builder: (c) => HomePageMurid(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Profile",
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
              Container(
                height: bodyHeight * 0.9,
                width: bodyWidth,
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.0,
                          left: size.width * 0.08,
                          bottom: size.height * 0.0),
                      child: IsiHistoryMurid(),
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
