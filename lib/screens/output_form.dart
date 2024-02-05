import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, jk, tglLahir, agama;
  OutputFormScreen({
    Key? key,
    required this.agama,
    required this.nama,
    required this.jk,
    required this.tglLahir,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Output")),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Text("Nama : $nama"),
            Text("Jenis kelamin : $jk"),
            Text("tanggal lahir : $tglLahir"),
            Text("Agama : $agama"),
          ],
        ),
      ),
    );
  }
}
