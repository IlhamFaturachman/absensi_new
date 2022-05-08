// ignore_for_file: prefer_const_constructors

import 'dart:convert';


import 'package:absen_new/constants/color.dart';
import 'package:absen_new/model/fetch_absen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CardHistoryGuru extends StatefulWidget {
  const CardHistoryGuru({
    Key? key,
  }) : super(key: key);

  @override
  State<CardHistoryGuru> createState() => _CardHistoryGuru();
}

class _CardHistoryGuru extends State<CardHistoryGuru> {
  final url = 'https://mighty-springs-18950.herokuapp.com';

  List absenList = [];

  Future<FetchAbsen> getAbsen() async {
    final response = await http.get(
      Uri.parse(url + '/api/ngabsen/teacher/attendances/5'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      var items = json.decode(response.body)['data'];
      setState(() {
        absenList = items;
      });
      return FetchAbsen.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      setState(() {
        absenList = [];
      });
      throw Exception(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    listAbsen = getAbsen();
  }

  // int counterItem(data){

  //   var number = 0;

  //   data.forEach((x){
  //     number += 1 ;
  //   });
  //   return number;
  // }

  Future<FetchAbsen>? listAbsen;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyWidth = mediaQueryWidth;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;

    return SingleChildScrollView(
      child: Center(
        child: FutureBuilder<FetchAbsen>(
          future: listAbsen,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              List<dynamic> absenData = snapshot.data.data[0].attendanceList;
              var _listAbsen = snapshot.data.data[0];
              final List<String> DataCount = absenData.map((e) => e.toString()).toList();
              print(snapshot.data.data[0].attendanceList[0].title);
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: DataCount.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: size.height * 0.005,
                                right: size.width * 0.05),
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: size.height * 0.006),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topLeft: Radius.circular(10)),
                                      color: mainColour,
                                    ),
                                    height: bodyHeight * 0.119,
                                    width: bodyWidth * 0.1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 1, left: 10),
                                  child: Container(
                                    height: bodyHeight * 0.13,
                                    width: bodyWidth * 0.8,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      color: listColor,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: size.width * 0.03,
                                                    top: size.width * 0.03),
                                                child: Container(
                                                  height: bodyHeight * 0.03,
                                                  width: bodyWidth * 0.5,
                                                  child: Text(
                                                    _listAbsen.attendanceList[index].title,
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: bodyWidth * 0.045,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: size.width * 0,
                                                    top: size.width * 0.04),
                                                child: Container(
                                                  height: bodyHeight * 0.03,
                                                  width: bodyWidth * 0.23,
                                                  child: Text(
                                                    "Tuesday",
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: bodyWidth * 0.045,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: size.width * 0.03,
                                                    
                                                    top: size.height * 0.02),
                                                child: Container(
                                                  height: bodyHeight * 0.03,
                                                  width: bodyWidth * 0.35,
                                                  child: Text(
                                                    _listAbsen.attendanceList[index].date.toString(),
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: bodyWidth * 0.045,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              print("bapak");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
