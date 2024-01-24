import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Teks"),
                FlutterLogo(
                  size: 45,
                )
              ],
            ),
            Column(
              children: [
                Text("Teks"),
                FlutterLogo(
                  size: 45,
                )
              ],
            )
          ],
        ),
        FlutterLogo(
          size: 45,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Teks"),
                FlutterLogo(
                  size: 45,
                )
              ],
            ),
            Column(
              children: [
                Text("Teks"),
                FlutterLogo(
                  size: 45,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
