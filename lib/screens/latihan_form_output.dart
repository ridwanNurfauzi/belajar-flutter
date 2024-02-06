// ignore_for_file: must_be_immutable, prefer_const_constructors, unnecessary_this, non_constant_identifier_names, sized_box_for_whitespace, unnecessary_new, prefer_typing_uninitialized_variables

import 'package:belajar/helpers/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Latihan1FormOutput extends StatelessWidget {
  final nama, tujuan, tgl, img, jumlah, harga, desc;

  Latihan1FormOutput({
    super.key,
    required this.nama,
    required this.img,
    required this.jumlah,
    required this.harga,
    required this.tujuan,
    required this.tgl,
    required this.desc,
  });

  var currencyFormat =
      new NumberFormat.currency(locale: "id_ID", symbol: "Rp ");

  @override
  Widget build(BuildContext context) {
    double jumlah_harga =
        int.parse(this.jumlah) * double.parse(this.harga.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text("Output Latihan"),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: displayHeight(context) * .25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage("$img"), fit: BoxFit.cover),
                ),
              ),
              Text("Nama : $nama"),
              Text("Tujuan : $tujuan"),
              Text("Harga : ${currencyFormat.format(harga)}"),
              Text("Jumlah : $jumlah"),
              Text("Jumlah harga : ${currencyFormat.format(jumlah_harga)}"),
              Text("Tanggal : $tgl"),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "$desc",
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
