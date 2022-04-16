// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.1),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      //
                    },
                    child: Container(
                      height: size.height * 0.1,
                      width: size.width * 0.15,
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
              padding: EdgeInsets.only(),
              child: Container(
                child: Text(
                  "Your Schedule"
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
          width: size.width * 0.25,
          height: size.height * 0.1,
          child: FittedBox(
              child: FloatingActionButton(
                  backgroundColor: secondaryColour,
                  onPressed: () {},
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
                Padding(
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
                SizedBox.shrink(),
                Padding(
                  padding: EdgeInsets.only(
                      right: size.width * 0.15, top: size.height * 0.005),
                  child: Column(
                    children: [
                      Icon(
                        Icons.history,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
