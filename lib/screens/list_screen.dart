import 'package:belajar/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListSeaScreen extends StatelessWidget {
  ListSeaScreen({super.key});

  var seaData = [
    {
      "nama": "Laut Arab (بحر العرب)",
      "wilayah": "India, Iran, Yaman",
      "image": "assets/images/laut-arab.jpg",
      "desc":
          "Laut Arab (bahasa Arab: بحر العرب) adalah sebuah bagian dari Samudra Hindia yang dibatasi oleh India di timur, Provinsi Baluchistan dan Sindh (Pakistan) di utara, dan Jazirah Arab di barat. Laut ini menjadi Teluk Aden yang terhubung dengan Laut Merah melalui Bab-el-Mandeb dan Teluk Oman yang terhubung dengan Teluk Persia."
    },
    {
      "nama": "Laut Cina Selatan",
      "wilayah": "RRC, Filipina, Malaysia",
      "image": "assets/images/laut-cina-selatan.jpg",
      "desc":
          "Laut China Selatan atau Laut Tiongkok Selatan adalah laut bagian tepi dari Samudra Pasifik, yang membentang dari Selat Karimata dan Selat Malaka, hingga Selat Taiwan dengan luas kurang lebih 3.500.000 km². Laut ini berpotensi besar strategis karena sepertiga perlintasan laut berlalu lalang di sana. Laut ini juga memiliki kekayaan biota laut yang mampu menopang kebutuhan pangan jutaan orang di Asia Tenggara sekaligus cadangan minyak dan gas alam yang besar."
    },
    {
      "nama": "Laut Filipina",
      "wilayah": "Filipina dan Taiwan",
      "image": "assets/images/laut-filipina.jpg",
      "desc":
          "Laut Filipina terletak sebagian di Samudra Pasifik bagian barat berbatasan dengan Filipina dan Taiwan di barat, Jepang di utara, Mariana di timur, dan Halmahera di selatan."
    },
    {
      "nama": "Laut Jepang",
      "wilayah": "Jepang",
      "image": "assets/images/laut-jepang.png",
      "desc":
          "Laut Jepang dikelilingi oleh daratan Rusia dan pulau Sakhalin di sebelah utara, Korea Utara dan Korea Selatan di sebelah barat, dan di sebelah timur oleh kepulauan Jepang yang terdiri dari pulau Hokkaido, Honshu, dan Kyushu."
    },
    {
      "nama": "Laut Jawa",
      "wilayah": "Indonesia",
      "image": "assets/images/laut-jawa.jpg",
      "desc":
          "Laut Jawa adalah perairan dangkal dengan luas kira-kira 310.000 km2 di antara Pulau Kalimantan, Jawa, Sumatra, dan Sulawesi di gugusan kepulauan Indonesia. Laut ini relatif muda, terbentuk pada Zaman Es[1] terakhir (sekitar 12.000 tahun Sebelum Masehi) ketika dua sistem sungai bersatu. Di barat lautnya, Selat Karimata yang menghubungkannya dengan Laut Tiongkok Selatan."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailSeaScreen(
                        nama: seaData[index]['nama'],
                        wilayah: seaData[index]['wilayah'],
                        image: seaData[index]['image'],
                        desc: seaData[index]['desc'],
                      ),
                    ));
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * .25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage("${seaData[index]['image']}"),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black),
                  child: Text(
                    "${seaData[index]['nama']} - ${seaData[index]['wilayah']}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            );
          },
          itemCount: seaData.length,
        ),
      ),
    );
  }
}
