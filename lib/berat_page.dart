import 'package:flutter/material.dart';

class Berat extends StatefulWidget {
  @override
  State<Berat> createState() => _BeratState();
}

class _BeratState extends State<Berat> {
  @override
  double _berat = 0;
  List<String> _ukuran = ["kg", "ons", "dag", "g", "dg", "cg", "mg"];
  var _BeratAwal;
  var _KonversiBerat;
  double _hasil = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen[100],
        appBar: AppBar(
            title: Text("Pengonversi Berat"),
            backgroundColor: Colors.lightGreen),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Angka Berat"),
              TextField(
                onChanged: (text) {
                  var bacaBerat = double.tryParse(text);
                  if (bacaBerat != null) {
                    setState(() {
                      _berat = bacaBerat;
                    });
                  }
                },
              ),
              Text("Dari"),
              DropdownButton(
                value: _BeratAwal,
                items: _ukuran.map((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _BeratAwal = value;
                  });
                },
              ),
              Text("Menjadi"),
              DropdownButton(
                value: _KonversiBerat,
                items: _ukuran.map((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _KonversiBerat = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () => convert(),
                child: Text("Ubah"),
                style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
              ),
              Text(_hasil.toString()),
            ],
          ),
        ),
      ),
    );
  }

  void convert() {
    setState(() {
      if (_BeratAwal == "kg" && _KonversiBerat == "ons") {
        _hasil = (10 * _berat);
      } else if (_BeratAwal == "kg" && _KonversiBerat == "dag") {
        _hasil = (100 * _berat);
      } else if (_BeratAwal == "kg" && _KonversiBerat == "g") {
        _hasil = (1000 * _berat);
      } else if (_BeratAwal == "kg" && _KonversiBerat == "dg") {
        _hasil = (10000 * _berat);
      } else if (_BeratAwal == "kg" && _KonversiBerat == "cg") {
        _hasil = (100000 * _berat);
      } else if (_BeratAwal == "kg" && _KonversiBerat == "mg") {
        _hasil = (1000000 * _berat);
      } else if (_BeratAwal == "ons" && _KonversiBerat == "kg") {
        _hasil = (_berat / 10);
      } else if (_BeratAwal == "ons" && _KonversiBerat == "dag") {
        _hasil = (10 * _berat);
      } else if (_BeratAwal == "ons" && _KonversiBerat == "g") {
        _hasil = (100 * _berat);
      } else if (_BeratAwal == "ons" && _KonversiBerat == "dg") {
        _hasil = (1000 * _berat);
      } else if (_BeratAwal == "ons" && _KonversiBerat == "cg") {
        _hasil = (10000 * _berat);
      } else if (_BeratAwal == "ons" && _KonversiBerat == "mg") {
        _hasil = (100000 * _berat);
      } else if (_BeratAwal == "dag" && _KonversiBerat == "kg") {
        _hasil = (_berat / 100);
      } else if (_BeratAwal == "dag" && _KonversiBerat == "ons") {
        _hasil = (_berat / 10);
      } else if (_BeratAwal == "dag" && _KonversiBerat == "g") {
        _hasil = (10 * _berat);
      } else if (_BeratAwal == "dag" && _KonversiBerat == "dg") {
        _hasil = (100 * _berat);
      } else if (_BeratAwal == "dag" && _KonversiBerat == "cg") {
        _hasil = (1000 * _berat);
      } else if (_BeratAwal == "dag" && _KonversiBerat == "mg") {
        _hasil = (10000 * _berat);
      } else if (_BeratAwal == "g" && _KonversiBerat == "kg") {
        _hasil = (_berat / 1000);
      } else if (_BeratAwal == "g" && _KonversiBerat == "ons") {
        _hasil = (_berat / 100);
      } else if (_BeratAwal == "g" && _KonversiBerat == "dag") {
        _hasil = (_berat / 10);
      } else if (_BeratAwal == "g" && _KonversiBerat == "dg") {
        _hasil = (10 * _berat);
      } else if (_BeratAwal == "g" && _KonversiBerat == "cg") {
        _hasil = (100 * _berat);
      } else if (_BeratAwal == "g" && _KonversiBerat == "mg") {
        _hasil = (1000 * _berat);
      } else if (_BeratAwal == "dg" && _KonversiBerat == "kg") {
        _hasil = (_berat / 10000);
      } else if (_BeratAwal == "dg" && _KonversiBerat == "ons") {
        _hasil = (_berat / 1000);
      } else if (_BeratAwal == "dg" && _KonversiBerat == "dag") {
        _hasil = (_berat / 100);
      } else if (_BeratAwal == "dg" && _KonversiBerat == "g") {
        _hasil = (_berat / 10);
      } else if (_BeratAwal == "dg" && _KonversiBerat == "cg") {
        _hasil = (10 * _berat);
      } else if (_BeratAwal == "dg" && _KonversiBerat == "mg") {
        _hasil = (100 * _berat);
      } else if (_BeratAwal == "cg" && _KonversiBerat == "kg") {
        _hasil = (_berat / 100000);
      } else if (_BeratAwal == "cg" && _KonversiBerat == "ons") {
        _hasil = (_berat / 10000);
      } else if (_BeratAwal == "cg" && _KonversiBerat == "dag") {
        _hasil = (_berat / 1000);
      } else if (_BeratAwal == "cg" && _KonversiBerat == "g") {
        _hasil = (_berat / 100);
      } else if (_BeratAwal == "cg" && _KonversiBerat == "dg") {
        _hasil = (_berat / 10);
      } else if (_BeratAwal == "cg" && _KonversiBerat == "mg") {
        _hasil = (100 * _berat);
      } else if (_BeratAwal == "mg" && _KonversiBerat == "kg") {
        _hasil = (_berat / 1000000);
      } else if (_BeratAwal == "mg" && _KonversiBerat == "ons") {
        _hasil = (_berat / 100000);
      } else if (_BeratAwal == "mg" && _KonversiBerat == "dag") {
        _hasil = (_berat / 10000);
      } else if (_BeratAwal == "mg" && _KonversiBerat == "g") {
        _hasil = (_berat / 1000);
      } else if (_BeratAwal == "mg" && _KonversiBerat == "dg") {
        _hasil = (_berat / 100);
      } else if (_BeratAwal == "mg" && _KonversiBerat == "cg") {
        _hasil = (_berat / 10);
      } else {
        _hasil = _berat;
      }
    });
  }
}
