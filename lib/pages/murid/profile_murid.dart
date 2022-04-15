// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants/color.dart';

class ProfileMurid extends StatefulWidget {
  const ProfileMurid({Key? key}) : super(key: key);

  @override
  State<ProfileMurid> createState() => _ProfileMuridState();
}

class _ProfileMuridState extends State<ProfileMurid> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            "Profile",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.015),
                  child: Container(
                    height: size.height * 0.2,
                    width: size.width * 0.25,
                    child: Image(
                      image: AssetImage("assets/images/profile.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "NIP",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: size.width * 0.85,
                        height: size.height * 0.075,
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
                        child: Text(
                          "Full Name",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: size.width * 0.85,
                        height: size.height * 0.075,
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
                        child: Text(
                          "Class",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: size.width * 0.85,
                        height: size.height * 0.075,
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
                        child: Text(
                          "Attendance Number",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: size.width * 0.85,
                        height: size.height * 0.075,
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
                        child: Text(
                          "Phone",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        width: size.width * 0.85,
                        height: size.height * 0.075,
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
            ],
          ),
        ),
      ),
    );
  }
}
