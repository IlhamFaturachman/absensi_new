// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:absen_new/constants/color.dart';
import 'package:absen_new/model/login.dart';
import 'package:absen_new/pages/guru/home.dart';
import 'package:absen_new/pages/murid/home_murid.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final url = 'https://mighty-springs-18950.herokuapp.com';
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  Future<Login> loginApi() async {
    final response = await http.post(
      Uri.parse(url + '/api/ngabsen/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'id_number': usernamecontroller.text,
        'password': passwordcontroller.text,
      }),
    );

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return Login.fromJson(jsonDecode(response.body));
      
    }
    
    else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final bodyWidth = mediaQueryWidth;
    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.1),
                  child: Container(
                    height: bodyHeight * 0.1,
                    width: bodyWidth,
                    child: Text(
                      "Welcome To ngabsen!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: bodyWidth * 0.08,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Container(
                    height: bodyHeight * 0.3,
                    width: bodyWidth * 0.7,
                    child: Image(
                      image: AssetImage("assets/images/login.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.1),
                  child: Container(
                    width: bodyWidth * 0.7,
                    height: bodyHeight * 0.1,
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
                            fontSize: bodyWidth * 0.045,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: bodyWidth * 0.7,
                  height: bodyHeight * 0.1,
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordcontroller,
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
                          fontSize: bodyWidth * 0.045,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.05),
                  child: Container(
                    height: bodyHeight * 0.06,
                    width: bodyWidth * 0.3,
                    decoration: BoxDecoration(
                        color: mainColour,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () async {
                        final Login user = await loginApi();
                        CircularProgressIndicator();
                        user == null
                            ? SnackBar(
                                content: Text("Maaf Gabisa"),
                                duration: const Duration(seconds: 3),
                              )
                            : print(user);
                        if (user.data.role == 'guru') {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (c) => HomePageGuru(),
                            ),
                          );
                        }
                        if (user.data.role == 'siswa') {
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
                            fontSize: bodyWidth * 0.045,
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
    );
  }
}
