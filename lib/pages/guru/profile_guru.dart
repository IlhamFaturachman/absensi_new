// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/pages/guru/home.dart';
import 'package:flutter/material.dart';

class ProfileGuru extends StatefulWidget {
  const ProfileGuru({Key? key}) : super(key: key);

  @override
  State<ProfileGuru> createState() => _ProfileGuruState();
}

class _ProfileGuruState extends State<ProfileGuru> {
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
          "Profile",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.0),
                  child: Container(
                    height: bodyHeight * 0.2,
                    width: bodyWidth * 0.37,
                    child: Image(
                      image: AssetImage("assets/images/profile.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                height: bodyHeight * 0.68,
                width: bodyWidth,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: bodyWidth * 0.85,
                        height: bodyHeight * 0.03,
                        child: Text(
                          "NIP",
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
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.02),
                        child: Container(
                          width: bodyWidth * 0.85,
                          height: bodyHeight * 0.03,
                          child: Text(
                            "Full Name",
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
                          height: bodyHeight * 0.075,
                          child: TextFormField(
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
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.02),
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
                          height: bodyHeight * 0.075,
                          child: TextFormField(
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
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.02),
                        child: Container(
                          width: bodyWidth * 0.85,
                          height: bodyHeight * 0.03,
                          child: Text(
                            "Phone",
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
                          height: bodyHeight * 0.075,
                          child: TextFormField(
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
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
