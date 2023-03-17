import 'package:flutter/material.dart';

class About_Page extends StatelessWidget {
  const About_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: new AppBar(
        backgroundColor: Colors.lightGreen,
        title: new Text("Halaman About"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(5.0),),
            Text(
              "Deskripsi Aplikasi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10.0),),
            Image.asset(
              'image/splash.png',
              height: 150,
              width: 150,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Card(
              elevation: 5,
              color: Colors.lightGreen[50],
              child: Row(children: [
                Expanded(
                  child: Container(
                    color: Colors.lightGreen[50],
                    padding: EdgeInsets.all(10),
                    height: 160,
                    child: Column(
                      children: [
                        Container(
                          child: Text('UCA'),
                        ),
                        Container(
                          child: Text(
                            'UCA adalah sebuah alikasi konversi satuan yang dimana user dapat mengetahui konversi yang diinginkan seperti konversi satuan berat, panjang, suhu, dan waktu. Aplikasi ini dibuat oleh Fajrin Nurhakim dengan Nim 19103019 untuk memenuhi tugas Postest yang berisikan statefull widget dan sttelest widget',
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
