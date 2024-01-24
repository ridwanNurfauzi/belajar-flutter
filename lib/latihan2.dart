import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: double.infinity,
          height: 140,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.blueAccent,
                      ),
                      Text("Text")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.blueAccent,
                      ),
                      Text("Text")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.blueAccent,
                      ),
                      Text("Text")
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
