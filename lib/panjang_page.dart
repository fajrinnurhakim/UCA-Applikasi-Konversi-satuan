import 'package:flutter/material.dart';

class Panjang extends StatefulWidget {
  @override
  State<Panjang> createState() => _PanjangState();
}

class _PanjangState extends State<Panjang> {
  @override
  double _panjang = 0;
  List<String> _ukuran = ["km", "hm", "dam", "m", "dm", "cm", "mm"];
  var _PanjangAwal;
  var _KonversiPanjang;
  double _hasil = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen[100],
        appBar: AppBar(
            title: Text("Pengonversi Panjang"),
            backgroundColor: Colors.lightGreen),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Angka Panjang"),
              TextField(
                onChanged: (text) {
                  var bacaPanjang = double.tryParse(text);
                  if (bacaPanjang != null) {
                    setState(() {
                      _panjang = bacaPanjang;
                    });
                  }
                },
              ),
              Text("Dari"),
              DropdownButton(
                value: _PanjangAwal,
                items: _ukuran.map((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _PanjangAwal = value;
                  });
                },
              ),
              Text("Menjadi"),
              DropdownButton(
                value: _KonversiPanjang,
                items: _ukuran.map((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _KonversiPanjang = value;
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
      if (_PanjangAwal == "km" && _KonversiPanjang == "hm") {
        _hasil = (10 * _panjang);
      } else if (_PanjangAwal == "km" && _KonversiPanjang == "dam") {
        _hasil = (100 * _panjang);
      } else if (_PanjangAwal == "km" && _KonversiPanjang == "m") {
        _hasil = (1000 * _panjang);
      } else if (_PanjangAwal == "km" && _KonversiPanjang == "dm") {
        _hasil = (10000 * _panjang);
      } else if (_PanjangAwal == "km" && _KonversiPanjang == "cm") {
        _hasil = (100000 * _panjang);
      } else if (_PanjangAwal == "km" && _KonversiPanjang == "mm") {
        _hasil = (1000000 * _panjang);
      } else if (_PanjangAwal == "hm" && _KonversiPanjang == "km") {
        _hasil = (_panjang / 10);
      } else if (_PanjangAwal == "hm" && _KonversiPanjang == "dam") {
        _hasil = (10 * _panjang);
      } else if (_PanjangAwal == "hm" && _KonversiPanjang == "m") {
        _hasil = (100 * _panjang);
      } else if (_PanjangAwal == "hm" && _KonversiPanjang == "dm") {
        _hasil = (1000 * _panjang);
      } else if (_PanjangAwal == "hm" && _KonversiPanjang == "cm") {
        _hasil = (10000 * _panjang);
      } else if (_PanjangAwal == "hm" && _KonversiPanjang == "mm") {
        _hasil = (100000 * _panjang);
      } else if (_PanjangAwal == "dam" && _KonversiPanjang == "km") {
        _hasil = (_panjang / 100);
      } else if (_PanjangAwal == "dam" && _KonversiPanjang == "hm") {
        _hasil = (_panjang / 10);
      } else if (_PanjangAwal == "dam" && _KonversiPanjang == "m") {
        _hasil = (10 * _panjang);
      } else if (_PanjangAwal == "dam" && _KonversiPanjang == "dm") {
        _hasil = (100 * _panjang);
      } else if (_PanjangAwal == "dam" && _KonversiPanjang == "cm") {
        _hasil = (1000 * _panjang);
      } else if (_PanjangAwal == "dam" && _KonversiPanjang == "mm") {
        _hasil = (10000 * _panjang);
      } else if (_PanjangAwal == "m" && _KonversiPanjang == "km") {
        _hasil = (_panjang / 1000);
      } else if (_PanjangAwal == "m" && _KonversiPanjang == "hm") {
        _hasil = (_panjang / 100);
      } else if (_PanjangAwal == "m" && _KonversiPanjang == "dam") {
        _hasil = (_panjang / 10);
      } else if (_PanjangAwal == "m" && _KonversiPanjang == "dm") {
        _hasil = (10 * _panjang);
      } else if (_PanjangAwal == "m" && _KonversiPanjang == "cm") {
        _hasil = (100 * _panjang);
      } else if (_PanjangAwal == "m" && _KonversiPanjang == "mm") {
        _hasil = (1000 * _panjang);
      } else if (_PanjangAwal == "dm" && _KonversiPanjang == "km") {
        _hasil = (_panjang / 10000);
      } else if (_PanjangAwal == "dm" && _KonversiPanjang == "hm") {
        _hasil = (_panjang / 1000);
      } else if (_PanjangAwal == "dm" && _KonversiPanjang == "dam") {
        _hasil = (_panjang / 100);
      } else if (_PanjangAwal == "dm" && _KonversiPanjang == "m") {
        _hasil = (_panjang / 10);
      } else if (_PanjangAwal == "dm" && _KonversiPanjang == "cm") {
        _hasil = (10 * _panjang);
      } else if (_PanjangAwal == "dm" && _KonversiPanjang == "mm") {
        _hasil = (100 * _panjang);
      } else if (_PanjangAwal == "cm" && _KonversiPanjang == "km") {
        _hasil = (_panjang / 100000);
      } else if (_PanjangAwal == "cm" && _KonversiPanjang == "hm") {
        _hasil = (_panjang / 10000);
      } else if (_PanjangAwal == "cm" && _KonversiPanjang == "dam") {
        _hasil = (_panjang / 1000);
      } else if (_PanjangAwal == "cm" && _KonversiPanjang == "m") {
        _hasil = (_panjang / 100);
      } else if (_PanjangAwal == "cm" && _KonversiPanjang == "dm") {
        _hasil = (_panjang / 10);
      } else if (_PanjangAwal == "cm" && _KonversiPanjang == "mm") {
        _hasil = (100 * _panjang);
      } else if (_PanjangAwal == "mm" && _KonversiPanjang == "km") {
        _hasil = (_panjang / 1000000);
      } else if (_PanjangAwal == "mm" && _KonversiPanjang == "hm") {
        _hasil = (_panjang / 100000);
      } else if (_PanjangAwal == "mm" && _KonversiPanjang == "dam") {
        _hasil = (_panjang / 10000);
      } else if (_PanjangAwal == "mm" && _KonversiPanjang == "m") {
        _hasil = (_panjang / 1000);
      } else if (_PanjangAwal == "mm" && _KonversiPanjang == "dm") {
        _hasil = (_panjang / 100);
      } else if (_PanjangAwal == "mm" && _KonversiPanjang == "cm") {
        _hasil = (_panjang / 10);
      } else {
        _hasil = _panjang;
      }
    });
  }
}
