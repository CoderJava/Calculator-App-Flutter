import 'package:flutter/material.dart';

class Perhitungan extends StatefulWidget {

  String type;

  Perhitungan(String type) {
    this.type = type.toLowerCase();
  }

  @override
  PerhitunganState createState() => PerhitunganState(type);

}

class PerhitunganState extends State<Perhitungan> {
  String type;
  String titleToolbar;
  double _margin = 16.0;
  int total = 0;

  TextEditingController nilai1Controller = TextEditingController();
  TextEditingController nilai2Controller = TextEditingController();

  PerhitunganState(this.type) {
    switch (type) {
      case "penjumlahan":
        titleToolbar = "Penjumlahan";
        break;
      case "pengurangan":
        titleToolbar = "Pengurangan";
        break;
      case "perkalian":
        titleToolbar = "Perkalian";
        break;
      case "pembagian":
        titleToolbar = "Pembagian";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(titleToolbar),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop()),
        ),
        body: Container(
          margin: EdgeInsets.all(_margin),
          child: Column(
            children: <Widget>[
              TextField(
                  controller: nilai1Controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Input nilai 1")),
              Container(
                margin: EdgeInsets.only(top: _margin),
                child: TextField(
                    controller: nilai2Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Input nilai 2")),
              ),
              Container(
                margin: EdgeInsets.only(top: _margin),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text(
                      type.toUpperCase()
                    ),
                    onPressed: () {
                      String strNilai1 = nilai1Controller.text;
                      String strNilai2 = nilai2Controller.text;
                      if (strNilai1.isEmpty) {
                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text("Nilai 1 belum diisi")));
                      } else if (strNilai2.isEmpty) {
                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text("Nilai 2 belum diisi")));
                      } else {
                        setState(() {
                          int nilai1 = int.parse(strNilai1);
                          int nilai2 = int.parse(strNilai2);
                          if (type == "penjumlahan") {
                            total = nilai1 + nilai2;
                          } else if (type == "pengurangan") {
                            total = nilai1 - nilai2;
                          } else if (type == "perkalian") {
                            total = nilai1 * nilai2;
                          } else if (type == "pembagian") {
                            total = nilai1 ~/ nilai2;
                          }
                        });
                      }
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: _margin),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Total: $total", style: TextStyle(fontSize: 24.0)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


