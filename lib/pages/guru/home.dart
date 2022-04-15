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
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: size.height * 0.25,
                  width: size.width * 0.3,
                  child: Image(
                    image: AssetImage("assets/images/profpic.png"),
                  ),
                ),
                Text("haha"),
                Text("haha"),
              ],
            ),
          ],
        ),
      ),
      //bottomNavigationBar: NavbarGuru(),
    );
  }
}
