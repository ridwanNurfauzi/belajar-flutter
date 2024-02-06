// ignore_for_file: prefer_const_constructors, avoid_print, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:belajar/helpers/size_helper.dart';
import 'package:belajar/screens/latihan_form_output.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Latihan1Form extends StatefulWidget {
  const Latihan1Form({super.key});

  @override
  State<Latihan1Form> createState() => _Latihan1FormState();
}

class _Latihan1FormState extends State<Latihan1Form> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController tglController = TextEditingController();
  var _pilihTujuan;

  var seaData = [
    {
      "nama": "Laut Arab (بحر العرب)",
      "wilayah": "India, Iran, Yaman",
      "image": "assets/images/laut-arab.jpg",
      "harga": 12000000,
      "desc":
          "Laut Arab (bahasa Arab: بحر العرب) adalah sebuah bagian dari Samudra Hindia yang dibatasi oleh India di timur, Provinsi Baluchistan dan Sindh (Pakistan) di utara, dan Jazirah Arab di barat. Laut ini menjadi Teluk Aden yang terhubung dengan Laut Merah melalui Bab-el-Mandeb dan Teluk Oman yang terhubung dengan Teluk Persia."
    },
    {
      "nama": "Laut Cina Selatan",
      "wilayah": "RRC, Filipina, Malaysia",
      "image": "assets/images/laut-cina-selatan.jpg",
      "harga": 13000000,
      "desc":
          "Laut China Selatan atau Laut Tiongkok Selatan adalah laut bagian tepi dari Samudra Pasifik, yang membentang dari Selat Karimata dan Selat Malaka, hingga Selat Taiwan dengan luas kurang lebih 3.500.000 km². Laut ini berpotensi besar strategis karena sepertiga perlintasan laut berlalu lalang di sana. Laut ini juga memiliki kekayaan biota laut yang mampu menopang kebutuhan pangan jutaan orang di Asia Tenggara sekaligus cadangan minyak dan gas alam yang besar."
    },
    {
      "nama": "Laut Filipina",
      "wilayah": "Filipina dan Taiwan",
      "image": "assets/images/laut-filipina.jpg",
      "harga": 10000000,
      "desc":
          "Laut Filipina terletak sebagian di Samudra Pasifik bagian barat berbatasan dengan Filipina dan Taiwan di barat, Jepang di utara, Mariana di timur, dan Halmahera di selatan."
    },
    {
      "nama": "Laut Jepang",
      "wilayah": "Jepang",
      "image": "assets/images/laut-jepang.png",
      "harga": 19000000,
      "desc":
          "Laut Jepang dikelilingi oleh daratan Rusia dan pulau Sakhalin di sebelah utara, Korea Utara dan Korea Selatan di sebelah barat, dan di sebelah timur oleh kepulauan Jepang yang terdiri dari pulau Hokkaido, Honshu, dan Kyushu."
    },
    {
      "nama": "Laut Jawa",
      "wilayah": "Indonesia",
      "image": "assets/images/laut-jawa.jpg",
      "harga": 22000000,
      "desc":
          "Laut Jawa adalah perairan dangkal dengan luas kira-kira 310.000 km2 di antara Pulau Kalimantan, Jawa, Sumatra, dan Sulawesi di gugusan kepulauan Indonesia. Laut ini relatif muda, terbentuk pada Zaman Es[1] terakhir (sekitar 12.000 tahun Sebelum Masehi) ketika dua sistem sungai bersatu. Di barat lautnya, Selat Karimata yang menghubungkannya dengan Laut Tiongkok Selatan."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Laut"),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                margin: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Text(
                          "Pesan Tiket",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 18),
                        TextFormField(
                          controller: namaController,
                          decoration: InputDecoration(
                            hintText: "Masukkan Nama",
                            labelText: "Nama",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "input nama";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18),
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                            hintText: "Pilih Tujuan",
                            labelText: "Tujuan",
                            border: OutlineInputBorder(),
                          ),
                          items: seaData.map((e) {
                            int index = seaData.indexOf(e);
                            return DropdownMenuItem(
                              value: index,
                              child: Text("${e['nama']}"),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _pilihTujuan = newValue!.toString();
                            });
                          },
                        ),
                        SizedBox(height: 18),
                        TextFormField(
                          controller: jumlahController,
                          decoration: InputDecoration(
                            hintText: "Masukkan Jumlah",
                            labelText: "Jumlah",
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "input jumlah";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18),
                        TextFormField(
                          controller: tglController,
                          decoration: InputDecoration(
                            hintText: "Masukkan Tanggal",
                            labelText: "Tanggal",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Input Tanggal";
                            }
                            return null;
                          },
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              String tgl =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              setState(() {
                                tglController.text = tgl;
                              });
                            } else {
                              print("Tanggal tidak dipilih");
                            }
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        SizedBox(
                          width: displayWidth(context) * .8,
                          height: displayHeight(context) * .075,
                          child: ElevatedButton(
                            onPressed: () {
                              _submit();
                            },
                            child: Text("Simpan"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      String nama = namaController.text;
      var tujuan = seaData[int.parse(_pilihTujuan)]['nama'];
      String jumlah = jumlahController.text;
      String tgl = tglController.text;

      var img = seaData[int.parse(_pilihTujuan)]['image'];
      var harga = seaData[int.parse(_pilihTujuan)]['harga'];

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Latihan1FormOutput(
            tgl: tgl,
            img: img,
            nama: nama,
            harga: harga,
            jumlah: jumlah,
            tujuan: tujuan,
            desc: seaData[int.parse(_pilihTujuan)]['desc'],
          ),
        ),
      );
    }
  }
}
