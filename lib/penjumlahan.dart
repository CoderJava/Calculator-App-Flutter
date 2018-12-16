import 'package:flutter/material.dart';

class Penjumlahan extends StatefulWidget {
  @override
  PenjumlahanState createState() => PenjumlahanState();
}

class PenjumlahanState extends State<Penjumlahan> {
  double _margin = 16.0;
  int total = 0;

  TextEditingController nilai1Controller = TextEditingController();
  TextEditingController nilai2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Penjumlahan"),
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
                    child: Text("JUMLAH"),
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
                          total = nilai1 + nilai2;
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
