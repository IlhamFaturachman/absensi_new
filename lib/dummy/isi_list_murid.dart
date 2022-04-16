// ignore_for_file: prefer_const_constructors

import 'package:absen_new/widgets/guru/card_list_murid.dart';
import 'package:flutter/material.dart';

class IsiListMurid extends StatelessWidget {
  const IsiListMurid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          
          CardListMurid(
            nama: "Alex",
            jam: "07.00",
          ),
          CardListMurid(
            nama: "Alex",
            jam: "07.00",
          ),
          CardListMurid(
            nama: "Alex",
            jam: "07.00",
          ),
          CardListMurid(
            nama: "Alex",
            jam: "07.00",
          ),
          CardListMurid(
            nama: "Alex",
            jam: "07.00",
          ),
          CardListMurid(
            nama: "Alex",
            jam: "07.00",
          ),
          CardListMurid(
            nama: "Alex",
            jam: "07.00",
          ),
          CardListMurid(
            nama: "Alex",
            jam: "07.00",
          ),
          CardListMurid(
            nama: "Alex",
            jam: "07.00",
          ),
          CardListMurid(
            nama: "Alex",
            jam: "07.00",
          ),
          CardListMurid(
            nama: "Alex",
            jam: "07.00",
          ),
          CardListMuridRed(nama: "Upin", jam: "08.00"),
          CardListMuridRed(nama: "Upin", jam: "08.00"),
          CardListMuridAbu(nama: "Upin", jam: "08.00"),
          CardListMuridAbu(nama: "Upin", jam: "08.00"),
        ],
      ),
    );
  }
}
