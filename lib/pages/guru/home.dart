// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/pages/guru/history_guru.dart';
import 'package:absen_new/pages/guru/input_absen.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.08, top: size.height * 0.03),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      //
                    },
                    child: Container(
                      height: size.height * 0.075,
                      width: size.width * 0.1,
                      child: Image(
                        image: AssetImage("assets/images/profpic.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.04),
                    child: Container(
                      child: Text(
                        "Hi, Tyas",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: size.width * 0.3, top: size.height * 0.02),
              child: Container(
                child: Text(
                  "your schedule",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            
            Container(
              height: size.height * 0.13,
              width: size.width * 0.89,
              child: Padding(
                padding: EdgeInsets.only(top: size.width * 0.08, left: size.width * 0.03),
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
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.5),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: size.height * 0.1,
              width: size.width * 0.89,
              child: Padding(
                padding: EdgeInsets.only(top: size.width * 0.02, left: size.width * 0.03),
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
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.5),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: size.height * 0.1,
              width: size.width * 0.89,
              child: Padding(
                padding: EdgeInsets.only(top: size.width * 0.02, left: size.width * 0.03),
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
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.5),
                        child: Icon(
                          Icons.keyboard_arrow_right,
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
      floatingActionButton: SizedBox(
          width: 80,
          height: 80,
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
                  child: Icon(Icons.add)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: mainColour,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 70,
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
                    child: Column(
                      children: [
                        Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text("Profile",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
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
                    child: Column(
                      children: [
                        Icon(
                          Icons.history,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text("History",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
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
