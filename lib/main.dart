import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Belajar Flutter1",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
          title: Text("Belajar Flutter"),
        ),
        body: Center(
          child: Text(
            "Hallo",
            style: TextStyle(color: Colors.amberAccent),
          ),
        ),
      ),
    );
  }
}
