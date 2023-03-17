import 'dart:async';
import 'package:flutter/material.dart';
import 'package:s1si03b_19103019_fajrinnurhakim/home_page.dart';
import 'package:s1si03b_19103019_fajrinnurhakim/main.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    var durasiSplash = const Duration(seconds: 2);
    return Timer(durasiSplash, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return MyBottomNavigationBar();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: Center(
        child: Image.asset(
          "image/splash.png",
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}
