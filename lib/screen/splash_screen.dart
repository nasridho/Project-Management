import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_managemet/main.dart';
import 'package:project_managemet/screen/home/dashboard.dart';
import 'package:project_managemet/screen/home/onboardingpage.dart';


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
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return MaterialApp(
            home: introduction == 0 ? HomePage(title: 'Introduction') : DashboardScreen(),
          );
        })
      );
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(229,229,220,195),
      body: Center(
        child: Image.asset("assets/images/proriatylogo.png",
        width: 200,
        height: 88,
        ),
      ),
    );
  }
}

