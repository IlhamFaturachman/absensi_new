// ignore_for_file: prefer_const_constructors

import 'package:absen_new/pages/guru/home.dart';
import 'package:absen_new/widgets/guru/form_input_absen.dart';
import 'package:flutter/material.dart';

class InputAbsenGuru extends StatefulWidget {
  const InputAbsenGuru({Key? key}) : super(key: key);

  @override
  State<InputAbsenGuru> createState() => _InputAbsenGuruState();
}

final TextEditingController judulcontroller = TextEditingController();
final TextEditingController tanggalcontroller = TextEditingController();

class _InputAbsenGuruState extends State<InputAbsenGuru> {
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
          "New Attendance",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: bodyWidth,
                child: FormInputAbsen(
                  judulcontroller: judulcontroller,
                  tanggalcontroller: tanggalcontroller,

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
