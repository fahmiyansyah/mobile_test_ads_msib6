import 'dart:async';

import 'package:flutter/material.dart';

import 'package:mobile_test_ads/main.dart';
import 'package:mobile_test_ads/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Walkthrough1(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: buildLogo()),
      ),
    );
  }

  
//Logo
  Widget buildLogo() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 74,
          height: 74,
          child: Image.asset(
            "assets/icons/logo splash.png",
            fit: BoxFit.contain,
          ),
        ),
        const Text(
          "Apotech",
          style: TextStyle(
            fontFamily: 'SofiaPro',
            fontSize: 28.0,
            color: Color(0xFF090F47),
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
