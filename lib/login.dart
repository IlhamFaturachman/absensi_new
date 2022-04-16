// ignore_for_file: prefer_const_constructors

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/pages/guru/home.dart';
import 'package:absen_new/pages/guru/input_absen.dart';
import 'package:absen_new/pages/guru/profile_guru.dart';
import 'package:absen_new/pages/murid/home_murid.dart';
import 'package:absen_new/pages/murid/profile_murid.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Welcome To ngabsen!",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.04),
                    child: Container(
                      height: size.height * 0.3,
                      width: size.width * 0.7,
                      child: Image(
                        image: AssetImage("assets/images/login.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.1),
                    child: Container(
                      width: size.width * 0.7,
                      height: size.height * 0.085,
                      child: TextFormField(
                        controller: usernamecontroller,
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
                          hintText: 'username',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Container(
                      width: size.width * 0.7,
                      height: size.height * 0.085,
                      child: TextFormField(
                        controller: usernamecontroller,
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
                          hintText: 'password',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.1),
                    child: Container(
                      height: size.height * 0.06,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                          color: mainColour,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: () {
                          if (usernamecontroller.text == 'guru') {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (c) => HomePageGuru(),
                              ),
                            );
                          } else {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (c) => HomePageMurid(),
                              ),
                            );
                            
                          }
                        },
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'Poppins'),
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
    );
  }
}
