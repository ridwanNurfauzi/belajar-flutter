import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini adalah halaman ke-3."),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              child: Text("Home"),
            )
          ],
        ),
      ),
    );
  }
}
