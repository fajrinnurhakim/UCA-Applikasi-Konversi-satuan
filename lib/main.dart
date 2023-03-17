import 'package:flutter/material.dart';
import 'package:s1si03b_19103019_fajrinnurhakim/about_page.dart';
import 'package:s1si03b_19103019_fajrinnurhakim/home_page.dart';
import 'package:s1si03b_19103019_fajrinnurhakim/splash.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: SplashScreenPage(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    About_Page(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        backgroundColor: Colors.lightGreen,
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home_sharp,
            ),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.supervised_user_circle_sharp,
            ),
            label: ("About"),
          ),
        ],
      ),
    );
  }
}
