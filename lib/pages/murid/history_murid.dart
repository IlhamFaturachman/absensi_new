// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/dummy/isi_hitory_murid.dart';
import 'package:absen_new/dummy/isi_list_murid.dart';
import 'package:absen_new/pages/guru/input_absen.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => InputAbsenGuru());
                  Navigator.push(context, route);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.045,
                        top: size.height * 0.08,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.04, top: size.height * 0.08),
                      child: Container(
                        child: Text(
                          "History",
                          style: TextStyle(
                              fontSize: 33, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.03, left: size.width * 0.08),
                child: IsiHistoryMurid(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}