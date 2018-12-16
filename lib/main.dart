import 'package:calculator_app/penjumlahan.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

const String _fontFamily = "Roboto";
const double _margin = 16.0;

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeApp());
  }
}

class HomeApp extends StatelessWidget {
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Penjumlahan()));
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
