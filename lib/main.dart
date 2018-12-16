import 'package:calculator_app/perhitungan.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeApp());
  }
}

class HomeApp extends StatelessWidget {
  String _fontFamily = "Roboto";
  double _margin = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        margin: EdgeInsets.all(_margin),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                child: Text(
                  "PENJUMLAHAN",
                  style: TextStyle(fontFamily: _fontFamily),
                ),
                onPressed: () {
                  print("Button penjumlahan was tapped!");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Perhitungan("penjumlahan")));
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.only(top: _margin),
                child: RaisedButton(
                  child: Text(
                    "PENGURANGAN",
                    style: TextStyle(fontFamily: _fontFamily),
                  ),
                  onPressed: () {
                    print("Button pengurangan was tapped!");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Perhitungan("pengurangan")));
                  },
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.only(top: _margin),
                child: RaisedButton(
                  onPressed: () {
                    print("Button perkalian was tapped!");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Perhitungan("perkalian")));
                  },
                  child: Text(
                    "PERKALIAN",
                    style: TextStyle(fontFamily: _fontFamily),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.only(top: _margin),
                child: RaisedButton(
                  onPressed: () {
                    print("Button pembagian was tapped!");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Perhitungan("pembagian")));
                  },
                  child: Text(
                    "PEMBAGIAN",
                    style: TextStyle(fontFamily: _fontFamily),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
