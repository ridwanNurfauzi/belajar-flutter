import 'package:flutter/material.dart';

class BelajarRow extends StatelessWidget {
  const BelajarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Ini teks row 1"),
        Text("Ini teks row 2"),
        Text("Ini teks row 3"),
        Text("Ini teks row 4")
      ],
    );
  }
}
