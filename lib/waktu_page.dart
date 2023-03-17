import 'package:flutter/material.dart';

class Waktu extends StatefulWidget {
  @override
  State<Waktu> createState() => _WaktuState();
}

class _WaktuState extends State<Waktu> {
  @override
  double _waktu = 0;
  List<String> _ukuran = [
    "tahun",
    "bulan",
    "minggu",
    "hari",
    "jam",
    "menit",
    "detik"
  ];
  var _WaktuAwal;
  var _KonversiWaktu;
  double _hasil = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen[100],
        appBar: AppBar(
            title: Text("Pengonversi Waktu"),
            backgroundColor: Colors.lightGreen),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Angka Waktu"),
              TextField(
                onChanged: (text) {
                  var bacaWaktu = double.tryParse(text);
                  if (bacaWaktu != null) {
                    setState(() {
                      _waktu = bacaWaktu;
                    });
                  }
                },
              ),
              Text("Dari"),
              DropdownButton(
                value: _WaktuAwal,
                items: _ukuran.map((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _WaktuAwal = value;
                  });
                },
              ),
              Text("Menjadi"),
              DropdownButton(
                value: _KonversiWaktu,
                items: _ukuran.map((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _KonversiWaktu = value;
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
      if (_WaktuAwal == "tahun" && _KonversiWaktu == "bulan") {
        _hasil = (12 * _waktu);
      } else if (_WaktuAwal == "tahun" && _KonversiWaktu == "minggu") {
        _hasil = (53 * _waktu);
      } else if (_WaktuAwal == "tahun" && _KonversiWaktu == "hari") {
        _hasil = (365 * _waktu);
      } else if (_WaktuAwal == "tahun" && _KonversiWaktu == "jam") {
        _hasil = (8766 * _waktu);
      } else if (_WaktuAwal == "tahun" && _KonversiWaktu == "menit") {
        _hasil = (525960 * _waktu);
      } else if (_WaktuAwal == "tahun" && _KonversiWaktu == "detik") {
        _hasil = (3153600 * _waktu);
      } else if (_WaktuAwal == "bulan" && _KonversiWaktu == "tahun") {
        _hasil = (_waktu / 12);
      } else if (_WaktuAwal == "bulan" && _KonversiWaktu == "minggu") {
        _hasil = (4 * _waktu);
      } else if (_WaktuAwal == "bulan" && _KonversiWaktu == "hari") {
        _hasil = (30 * _waktu);
      } else if (_WaktuAwal == "bulan" && _KonversiWaktu == "jam") {
        _hasil = (730 * _waktu);
      } else if (_WaktuAwal == "bulan" && _KonversiWaktu == "menit") {
        _hasil = (43800 * _waktu);
      } else if (_WaktuAwal == "bulan" && _KonversiWaktu == "detik") {
        _hasil = (2628002 * _waktu);
      } else if (_WaktuAwal == "minggu" && _KonversiWaktu == "tahun") {
        _hasil = (_waktu / 53);
      } else if (_WaktuAwal == "minggu" && _KonversiWaktu == "bulan") {
        _hasil = (_waktu / 4);
      } else if (_WaktuAwal == "minggu" && _KonversiWaktu == "hari") {
        _hasil = (7 * _waktu);
      } else if (_WaktuAwal == "minggu" && _KonversiWaktu == "jam") {
        _hasil = (168 * _waktu);
      } else if (_WaktuAwal == "minggu" && _KonversiWaktu == "menit") {
        _hasil = (10080 * _waktu);
      } else if (_WaktuAwal == "minggu" && _KonversiWaktu == "detik") {
        _hasil = (604800 * _waktu);
      } else if (_WaktuAwal == "hari" && _KonversiWaktu == "tahun") {
        _hasil = (_waktu / 365);
      } else if (_WaktuAwal == "hari" && _KonversiWaktu == "bulan") {
        _hasil = (_waktu / 30);
      } else if (_WaktuAwal == "hari" && _KonversiWaktu == "minggu") {
        _hasil = (_waktu / 7);
      } else if (_WaktuAwal == "hari" && _KonversiWaktu == "jam") {
        _hasil = (24 * _waktu);
      } else if (_WaktuAwal == "hari" && _KonversiWaktu == "menit") {
        _hasil = (1440 * _waktu);
      } else if (_WaktuAwal == "hari" && _KonversiWaktu == "detik") {
        _hasil = (86400 * _waktu);
      } else if (_WaktuAwal == "jam" && _KonversiWaktu == "tahun") {
        _hasil = (_waktu / 8766);
      } else if (_WaktuAwal == "jam" && _KonversiWaktu == "bulan") {
        _hasil = (_waktu / 730);
      } else if (_WaktuAwal == "jam" && _KonversiWaktu == "minggu") {
        _hasil = (_waktu / 168);
      } else if (_WaktuAwal == "jam" && _KonversiWaktu == "hari") {
        _hasil = (_waktu / 24);
      } else if (_WaktuAwal == "jam" && _KonversiWaktu == "menit") {
        _hasil = (60 * _waktu);
      } else if (_WaktuAwal == "jam" && _KonversiWaktu == "detik") {
        _hasil = (3600 * _waktu);
      } else if (_WaktuAwal == "menit" && _KonversiWaktu == "tahun") {
        _hasil = (_waktu / 525960);
      } else if (_WaktuAwal == "menit" && _KonversiWaktu == "bulan") {
        _hasil = (_waktu / 43800);
      } else if (_WaktuAwal == "menit" && _KonversiWaktu == "minggu") {
        _hasil = (_waktu / 10080);
      } else if (_WaktuAwal == "menit" && _KonversiWaktu == "hari") {
        _hasil = (_waktu / 1440);
      } else if (_WaktuAwal == "menit" && _KonversiWaktu == "jam") {
        _hasil = (_waktu / 60);
      } else if (_WaktuAwal == "menit" && _KonversiWaktu == "detik") {
        _hasil = (60 * _waktu);
      } else if (_WaktuAwal == "detik" && _KonversiWaktu == "tahun") {
        _hasil = (_waktu / 3153600);
      } else if (_WaktuAwal == "detik" && _KonversiWaktu == "bulan") {
        _hasil = (_waktu / 2628002);
      } else if (_WaktuAwal == "detik" && _KonversiWaktu == "minggu") {
        _hasil = (_waktu / 604800);
      } else if (_WaktuAwal == "detik" && _KonversiWaktu == "hari") {
        _hasil = (_waktu / 86400);
      } else if (_WaktuAwal == "detik" && _KonversiWaktu == "jam") {
        _hasil = (_waktu / 3600);
      } else if (_WaktuAwal == "detik" && _KonversiWaktu == "menit") {
        _hasil = (_waktu / 60);
      } else {
        _hasil = _waktu;
      }
    });
  }
}
