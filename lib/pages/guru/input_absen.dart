// ignore_for_file: prefer_const_constructors

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.045, size.height * 0.05, 0, 0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          //
                        },
                        child: Container(
                          child: Icon(
                            Icons.arrow_back,
                            size: 40,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.04),
                        child: Container(
                          child: Text(
                            "New Attendance",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              FormInputAbsen(
                  judulcontroller: judulcontroller,
                  tanggalcontroller: tanggalcontroller,
                  jamawalcontroller: jamawalcontroller,
                  jamakhircontroller: jamakhircontroller,)
            ],
          ),
        ),
      ),
    );
  }
}
