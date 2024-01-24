import 'package:flutter/material.dart';

class BelajarListSeparated extends StatelessWidget {
  BelajarListSeparated({super.key});

  final colorList = [Colors.blue, Colors.yellow, Colors.green];
  final textList = ["Ini teks pertama", "Ini teks kedua", "Ini teks ketiga"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
        itemCount: colorList.length,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.black,
          );
        },
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            height: 200,
            width: double.infinity,
            color: colorList[index],
            child: Center(
              child: Text(textList[index]),
            ),
          );
        },
      ),
    );
  }
}
