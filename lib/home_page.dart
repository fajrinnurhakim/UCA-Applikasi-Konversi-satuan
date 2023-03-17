import 'package:flutter/material.dart';
import 'package:s1si03b_19103019_fajrinnurhakim/berat_page.dart';
import 'package:s1si03b_19103019_fajrinnurhakim/panjang_page.dart';
import 'package:s1si03b_19103019_fajrinnurhakim/suhu_page.dart';
import 'package:s1si03b_19103019_fajrinnurhakim/waktu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Text("UNIT CONVERSION APP"),
        backgroundColor: Colors.lightGreen,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            color: Colors.lightGreen[50],
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Suhu()));
                });
              },
              splashColor: Colors.grey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.thermostat_sharp,
                        size: 70, color: Colors.lightGreen),
                    Text(
                      'KONVERSI SUHU',
                      style: TextStyle(fontSize: 17, color: Colors.lightGreen),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.lightGreen[50],
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Panjang()));
                });
              },
              splashColor: Colors.grey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.timeline_sharp,
                        size: 70, color: Colors.lightGreen),
                    Text(
                      'KONVERSI PANJANG',
                      style: TextStyle(fontSize: 17, color: Colors.lightGreen),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.lightGreen[50],
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Berat()));
                });
              },
              splashColor: Colors.grey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.scale, size: 70, color: Colors.lightGreen),
                    Text(
                      'KONVERSI BERAT',
                      style: TextStyle(fontSize: 17, color: Colors.lightGreen),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.lightGreen[50],
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Waktu()));
                });
              },
              splashColor: Colors.grey,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.timer, size: 70, color: Colors.lightGreen),
                    Text(
                      'KONVERSI WAKTU',
                      style: TextStyle(fontSize: 17, color: Colors.lightGreen),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
