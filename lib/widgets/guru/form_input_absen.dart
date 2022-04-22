// ignore_for_file: prefer_const_constructors, unnecessary_new, deprecated_member_use

import 'dart:convert';

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/model/class.dart';
import 'package:absen_new/model/insert_data.dart';
import 'package:absen_new/model/subject.dart';
import 'package:absen_new/pages/guru/detail_absen.dart';
import 'package:absen_new/pages/guru/input_absen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:http/http.dart' as http;

class FormInputAbsen extends StatefulWidget {
  const FormInputAbsen({
    key,
    required this.judulcontroller,
    required this.tanggalcontroller,
  }) : super(key: key);

  final TextEditingController judulcontroller;
  final TextEditingController tanggalcontroller;

  @override
  State<FormInputAbsen> createState() => _FormInputAbsenState();
}

class _FormInputAbsenState extends State<FormInputAbsen> {
  final url = 'https://mighty-springs-18950.herokuapp.com';

  Future<Subject> getSubject() async {
    final response = await http.get(
      Uri.parse(url + '/api/ngabsen/admin/subject'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      var items = json.decode(response.body)['data'];
      print(items);
      setState(() {
        subjectList = items;
      });
      return Subject.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception(response.statusCode);
    }
  }

  Future<ClassAttendances> getClass() async {
    final response = await http.get(
      Uri.parse(url + '/api/ngabsen/admin/class'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      var items = json.decode(response.body)['data'];
      print(items);
      setState(() {
        classList = items;
      });
      return ClassAttendances.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception(response.statusCode);
    }
  }

  Future<InsertData> inputData() async {
    final response = await http.post(
      Uri.parse(url + '/api/ngabsen/teacher/createQr'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "subject_id": subjectValue.toString(),
        "date": _dateTime.toString(),
        "open_time": _initTime.toString(),
        "closed_time": _closedTime.toString(),
        "title": judulcontroller.text,
        "class_id": classValue.toString(),
        "qr_value": subjectValue.toString() +
            _dateTime.toString() +
            _initTime.toString() +
            _closedTime.toString() +
            judulcontroller.text +
            classValue.toString(),
      }),
    );

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return InsertData.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    getSubject();
    getClass();
  }

  List subjectList = [];
  List classList = [];

  String? subjectValue;
  String? classValue;
  DateTime? _dateTime;
  DateTime? _initTime;
  DateTime? _closedTime;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyWidth = mediaQueryWidth;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;

    return Column(
      children: [
        SingleChildScrollView(
          child: Container(
            color: Colors.white,
            width: bodyWidth * 1,
            height: bodyHeight * 0.89,
            child: Form(
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.08, top: size.height * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: bodyWidth * 0.85,
                      height: bodyHeight * 0.03,
                      child: Text(
                        "Title",
                        style: TextStyle(
                            fontSize: bodyWidth * 0.05,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.075,
                        child: TextFormField(
                          controller: widget.judulcontroller,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: formColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)),
                            fillColor: formColor,
                            filled: true,
                            hintText: 'Pertemuan 1',
                            hintStyle: TextStyle(
                                fontSize: bodyWidth * 0.04,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.015),
                      child: Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.03,
                        child: Text(
                          "Subject",
                          style: TextStyle(
                              fontSize: bodyWidth * 0.05,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.1,
                        child: DropdownButtonFormField(
                          hint: Text(
                            "Select Subject",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          items: subjectList.map((item) {
                            return DropdownMenuItem(
                              child: Text(item["name"].toString()),
                              value: item['id'].toString(),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: formColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)),
                            fillColor: formColor,
                            filled: true,
                          ),
                          value: subjectValue,
                          onChanged: (value) {
                            setState(() {
                              subjectValue = value as String?;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.03,
                        child: Text(
                          "Class",
                          style: TextStyle(
                              fontSize: bodyWidth * 0.05,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.1,
                        child: DropdownButtonFormField(
                          hint: Text(
                            "Select Class",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          items: classList.map((item) {
                            return DropdownMenuItem(
                              child: Text(item['grade'].toString() +
                                  " " +
                                  item['major']['name'].toString() +
                                  " " +
                                  item['class'].toString()),
                              value: item['id'].toString(),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: formColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)),
                            fillColor: formColor,
                            filled: true,
                          ),
                          value: classValue,
                          onChanged: (String? selectedNewValue) {
                            setState(
                              () {
                                classValue = selectedNewValue;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.03,
                        child: Text(
                          "Schedule Date",
                          style: TextStyle(
                              fontSize: bodyWidth * 0.05,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.07,
                        child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: formColor,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    _dateTime == null
                                        ? 'Select Date'
                                        : "${_dateTime?.toLocal()}"
                                            .split(' ')[0],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            DatePicker.showDatePicker(
                              context,
                              minTime: DateTime(2000, 3, 5),
                              maxTime: DateTime(2099, 6, 7),
                              currentTime: DateTime.now(),
                            ).then((date) {
                              //tambahkan setState dan panggil variabel _dateTime.
                              setState(() {
                                _dateTime = date;
                              });
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.03),
                      child: Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.03,
                        child: Text(
                          "Schedule Time",
                          style: TextStyle(
                              fontSize: bodyWidth * 0.05,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.01),
                              child: GestureDetector(
                                onTap: () {
                                  DatePicker.showTimePicker(
                                    context,
                                    currentTime: DateTime.now(),
                                  ).then((time) {
                                    setState(() {
                                      _initTime = time;
                                      print(_initTime);
                                    });
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: formColor,
                                  ),
                                  width: bodyWidth * 0.35,
                                  height: bodyHeight * 0.075,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Center(
                                      child: Text(
                                        _initTime == null
                                            ? 'Select Initial Time'
                                            : "${_initTime?.toLocal()}"
                                                .split(' ')[1],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: bodyWidth * 0.12,
                            height: bodyHeight * 0.075,
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(fontSize: bodyWidth * 0.15),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.height * 0.01),
                            child: Container(
                              width: bodyWidth * 0.35,
                              height: bodyHeight * 0.075,
                              child: GestureDetector(
                                onTap: () {
                                  DatePicker.showTimePicker(
                                    context,
                                    currentTime: DateTime.now(),
                                  ).then((time) {
                                    setState(() {
                                      _closedTime = time;
                                      print(_closedTime);
                                    });
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: formColor,
                                  ),
                                  width: bodyWidth * 0.35,
                                  height: bodyHeight * 0.075,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Center(
                                      child: Text(
                                        _closedTime == null
                                            ? 'Select Closed Time'
                                            : "${_closedTime?.toLocal()}"
                                                .split(' ')[1],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.04, right: size.width * 0.06),
                        child: Container(
                          height: bodyHeight * 0.06,
                          width: bodyWidth * 0.35,
                          decoration: BoxDecoration(
                              color: mainColour,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (c) => DetailAbsen(
                                      judulcontroller.text,
                                      subjectValue,
                                      classValue,
                                      _dateTime,
                                      _initTime,
                                      _closedTime),
                                ),
                              );
                            },
                            child: Container(
                              height: bodyHeight * 0.035,
                              width: bodyWidth,
                              child: Center(
                                child: Text(
                                  "Create",
                                  style: TextStyle(
                                      fontSize: bodyWidth * 0.06,
                                      color: Colors.white,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
