import 'package:belajar/helpers/size_helper.dart';
import 'package:belajar/screens/output_form.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BelajarForm extends StatefulWidget {
  const BelajarForm({super.key});

  @override
  State<BelajarForm> createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController jkController = TextEditingController();
  TextEditingController tglLahirController = TextEditingController();
  String _pilihAgama = "";

  final List<String> agama = [
    "Islam",
    "Protestan",
    "Katolik",
    "Hindu",
    "Budha",
    "Atheis",
  ];

  void initState() {
    tglLahirController.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 4,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Form biodata",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 18),
                      TextFormField(
                        controller: namaController,
                        decoration: InputDecoration(
                          hintText: "Masukkan Nama",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "input nama";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        controller: jkController,
                        decoration: InputDecoration(
                          hintText: "Jenis Kelamin",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Input Jenis kelamin";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        controller: tglLahirController,
                        decoration: InputDecoration(
                          hintText: "Tanggal Lahir",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Input Tanggal Lahir";
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
                              tglLahirController.text = tgl;
                            });
                          } else {
                            print("Tanggal tidak dipilih");
                          }
                        },
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                            hintText: "Pilih Agama",
                            labelText: "Agama",
                            border: OutlineInputBorder()),
                        items: agama.map((e) {
                          int index = 0;
                          return DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _pilihAgama = newValue!;
                          });
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
            )
          ],
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
      String jk = jkController.text;
      String agama = _pilihAgama;
      String tglLahir = tglLahirController.text;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputFormScreen(
            nama: nama,
            jk: jk,
            tglLahir: tglLahir,
            agama: agama,
          ),
        ),
      );
    }
  }
}
