
import 'package:absen_new/login.dart';
import 'package:absen_new/pages/guru/home.dart';

import 'package:absen_new/pages/murid/scanned_qr.dart';
import 'package:absen_new/widgets/murid/scanner.dart';

import 'package:absen_new/pages/guru/history_guru.dart';

import 'package:absen_new/pages/guru/home.dart';
import 'package:absen_new/pages/guru/input_absen.dart';
import 'package:absen_new/pages/guru/profile_guru.dart';
import 'package:absen_new/pages/murid/history_murid.dart';
import 'package:absen_new/pages/murid/home_murid.dart';
import 'package:absen_new/pages/murid/list_murid.dart';
import 'package:absen_new/widgets/guru/navbarguru.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
