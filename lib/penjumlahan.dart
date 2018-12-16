import 'package:flutter/material.dart';

class Penjumlahan extends StatefulWidget {
  @override
  PenjumlahanState createState() => PenjumlahanState();
}

class PenjumlahanState extends State<Penjumlahan> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Penjumlahan"),
        ),
      ),
    );
  }
}
