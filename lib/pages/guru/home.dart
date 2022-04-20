// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/pages/guru/history_guru.dart';
import 'package:absen_new/pages/guru/input_absen.dart';
import 'package:absen_new/pages/guru/list_murid.dart';
import 'package:absen_new/pages/guru/profile_guru.dart';
import 'package:absen_new/widgets/guru/navbarguru.dart';
import 'package:flutter/material.dart';

class HomePageGuru extends StatefulWidget {
  const HomePageGuru({Key? key}) : super(key: key);

  @override
  State<HomePageGuru> createState() => _HomePageGuruState();
}

class _HomePageGuruState extends State<HomePageGuru> {
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
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => ProfileGuru(),
                ),
              );
            },
            child: Image(
              image: AssetImage("assets/images/profpic.jpg"),
            ),
          ),
        ),
        title: Text(
          "Hi, Mami Tyas",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    right: size.width * 0.3, top: size.height * 0.05),
                child: Container(
                  height: bodyHeight * 0.07,
                  width: bodyWidth,
                  child: Center(
                    child: Text(
                      "your schedule",
                      style: TextStyle(
                          fontSize: bodyWidth * 0.08,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => ListMurid());
                  Navigator.push(context, route);
                },
                child: Container(
                  height: bodyHeight * 0.1,
                  width: bodyWidth * 0.89,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.01, left: size.width * 0.03),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      color: mainColour,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.03),
                            child: Text(
                              "Pertemuan 1",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: bodyWidth * 0.045,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.45),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              size: bodyHeight * 0.035,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: bodyHeight * 0.1,
                width: bodyWidth * 0.89,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.01, left: size.width * 0.03),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: mainColour,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.03),
                          child: Text(
                            "Pertemuan 1",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: bodyWidth * 0.045,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.45),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            size: bodyHeight * 0.035,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: bodyHeight * 0.1,
                width: bodyWidth * 0.89,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.01, left: size.width * 0.03),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    color: mainColour,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.03),
                          child: Text(
                            "Pertemuan 1",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: bodyWidth * 0.045,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.45),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            size: bodyHeight * 0.035,
                            color: Colors.white,
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
      ),
      floatingActionButton: SizedBox(
          width: bodyWidth * 0.23,
          height: bodyHeight * 0.13,
          child: FittedBox(
              child: FloatingActionButton(
                  backgroundColor: secondaryColour,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => InputAbsenGuru(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.add,
                    size: bodyHeight * 0.04,
                  )))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: bodyHeight * 0.08,
        child: BottomAppBar(
          color: mainColour,
          shape: CircularNotchedRectangle(),
          child: Padding(
            padding: EdgeInsets.only(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => ProfileGuru(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.15, top: size.height * 0.005),
                    child: Container(
                      height: bodyHeight * 0.08,
                      child: Column(
                        children: [
                          Icon(
                            Icons.person,
                            size: bodyHeight * 0.045,
                            color: Colors.white,
                          ),
                          Text("Profile",
                              style: TextStyle(
                                  fontSize: bodyWidth * 0.035,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.shrink(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => HistoryGuru(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: size.width * 0.15, top: size.height * 0.005),
                    child: Container(
                      height: bodyHeight * 0.08,
                      child: Column(
                        children: [
                          Icon(
                            Icons.history,
                            size: bodyHeight * 0.045,
                            color: Colors.white,
                          ),
                          Text("History",
                              style: TextStyle(
                                  fontSize: bodyWidth * 0.035,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
