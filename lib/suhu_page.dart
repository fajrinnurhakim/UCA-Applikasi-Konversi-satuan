import 'package:flutter/material.dart';

class Suhu extends StatefulWidget {
  @override
  State<Suhu> createState() => _SuhuState();
}

class _SuhuState extends State<Suhu> {
  @override
  double _suhu = 0;
  List<String> _ukuran = ["Celcius", "Reamur", "Fahrenheit", "Kelvin"];
  var _SuhuAwal;
  var _KonversiSuhu;
  double _hasil = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen[100],
        appBar: AppBar(
            title: Text("Pengonversi Suhu"),
            backgroundColor: Colors.lightGreen),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Angka Suhu"),
              TextField(
                onChanged: (text) {
                  var bacaSuhu = double.tryParse(text);
                  if (bacaSuhu != null) {
                    setState(() {
                      _suhu = bacaSuhu;
                    });
                  }
                },
              ),
              Text("Dari"),
              DropdownButton(
                value: _SuhuAwal,
                items: _ukuran.map((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _SuhuAwal = value;
                  });
                },
              ),
              Text("Menjadi"),
              DropdownButton(
                value: _KonversiSuhu,
                items: _ukuran.map((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _KonversiSuhu = value;
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
      if (_SuhuAwal == "Celcius" && _KonversiSuhu == "Reamur") {
        _hasil = (4 * _suhu) / 5;
      } else if (_SuhuAwal == "Celcius" && _KonversiSuhu == "Fahrenheit") {
        _hasil = (1.8 * _suhu) + 32;
      } else if (_SuhuAwal == "Celcius" && _KonversiSuhu == "Kelvin") {
        _hasil = _suhu + 273;
      } else if (_SuhuAwal == "Reamur" && _KonversiSuhu == "Celcius") {
        _hasil = (5 * _suhu) / 4;
      } else if (_SuhuAwal == "Reamur" && _KonversiSuhu == "Fahrenheit") {
        _hasil = (9 * _suhu) / 4 + 32;
      } else if (_SuhuAwal == "Reamur" && _KonversiSuhu == "Kelvin") {
        _hasil = (5 * _suhu) / 4 + 273;
      } else if (_SuhuAwal == "Fahrenheit" && _KonversiSuhu == "Celcius") {
        _hasil = (_suhu - 32) * 5 / 9;
      } else if (_SuhuAwal == "Fahrenheit" && _KonversiSuhu == "Reamur") {
        _hasil = (_suhu - 32) * 4 / 9;
      } else if (_SuhuAwal == "Fahrenheit" && _KonversiSuhu == "Kelvin") {
        _hasil = (_suhu - 32) * 5 / 9 + 273.15;
      } else if (_SuhuAwal == "Kelvin" && _KonversiSuhu == "Celcius") {
        _hasil = _suhu - 273;
      } else if (_SuhuAwal == "Kelvin" && _KonversiSuhu == "Reamur") {
        _hasil = (_suhu - 273) * (4 / 5);
      } else if (_SuhuAwal == "Kelvin" && _KonversiSuhu == "Fahrenheit") {
        _hasil = (_suhu - 273) * 9 / 5 + 32;
      } else {
        _hasil = _suhu;
      }
    });
  }
}
