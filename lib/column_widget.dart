import 'package:flutter/material.dart';

class BelajarColumn extends StatelessWidget {
  const BelajarColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Ini teks column 1"),
        Text("Ini teks column 2"),
        Text("Ini teks column 3"),
        Text("Ini teks column 4"),
        FlutterLogo(
          size: 50,
        )
      ],
    );
  }
}
