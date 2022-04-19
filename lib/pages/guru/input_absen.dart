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
final TextEditingController jamawalcontroller = TextEditingController();
final TextEditingController jamakhircontroller = TextEditingController();

class _InputAbsenGuruState extends State<InputAbsenGuru> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyWidth = mediaQueryWidth;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.045, size.height * 0.02, 0, 0),
                child: Container(
                  height: bodyHeight * 0.1,
                  width: bodyWidth,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => HomePageGuru());
                          Navigator.push(context, route);
                        },
                        child: Container(
                          child: Icon(
                            Icons.arrow_back,
                            size: bodyHeight * 0.05,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.04),
                        child: Container(
                          height: bodyHeight * 0.04,
                          width: bodyWidth * 0.8,
                          child: Text(
                            "New Attendance",
                            style: TextStyle(
                                fontSize: bodyWidth * 0.06,
                                fontWeight: FontWeight.bold),
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
                child: FormInputAbsen(
                  judulcontroller: judulcontroller,
                  tanggalcontroller: tanggalcontroller,
                  jamawalcontroller: jamawalcontroller,
                  jamakhircontroller: jamakhircontroller,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
