// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/dummy/isi_list_murid.dart';
import 'package:absen_new/pages/guru/home.dart';
import 'package:absen_new/pages/guru/input_absen.dart';
import 'package:absen_new/widgets/guru/navbarguru.dart';
import 'package:absen_new/widgets/guru/card_list_murid.dart';
import 'package:flutter/material.dart';

class ListMurid extends StatefulWidget {
  const ListMurid({Key? key}) : super(key: key);

  @override
  State<ListMurid> createState() => _ListMurid();
}

class _ListMurid extends State<ListMurid> {
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
            GestureDetector(
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => HomePageGuru());
                Navigator.push(context, route);
              },
              child: Container(
                height: bodyHeight * 0.12,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.045,
                        top: size.height * 0.05,
                        bottom: size.height * 0.01
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: bodyHeight * 0.05,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.04, top: size.height * 0.05, bottom: size.height * 0.01),
                      child: Container(
                        height: bodyHeight * 0.04,
                        width: bodyWidth * 0.8,
                        child: Text(
                          "Student List",
                          style: TextStyle(
                              fontSize: bodyWidth * 0.07, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: bodyHeight * 0.9,
              width: bodyWidth,
              child: Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0, left: size.width * 0.08, bottom: size.height * 0.00),
                    child: IsiListMurid(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
