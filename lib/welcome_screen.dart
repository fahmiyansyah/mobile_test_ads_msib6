import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test_ads/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 258,
              height: 258,
              child: Image.asset("assets/images/welcome_image.png"),
            ),
            SizedBox(
              height: 25,
            ),
            buildText(),
            SizedBox(
              height: 30,
            ),
            buildSignupButton(),
            SizedBox(
              height: 20,
            ),
            builFacebookButton(),
            SizedBox(
              height: 20,
            ),
            buildGmailButton(),
            SizedBox(
              height: 20,
            ),
            buildLoginButton(context),
          ],
        ),
      ),
    );
  }

  //Text
  Widget buildText() {
    return Container(
      padding: EdgeInsets.only(left: 59, right: 59),
      child: Column(
        children: [
          Text(
            "Welcome to Apotech",
            style: GoogleFonts.overpass(
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFF090F47),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 267,
            height: 48,
            child: Text(
              "Do you want some help with your health to get better life?",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF090F47),
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  //Signup Button
  Widget buildSignupButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF4157FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          minimumSize: Size(311.0, 50.00)),
      child: Text(
        'SIGN UP WITH EMAIL',
        style: GoogleFonts.overpass(
          textStyle: const TextStyle(
            fontSize: 16.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            height: 21.0 / 16.0,
          ),
        ),
      ),
    );
  }

//Facebook Button
  Widget builFacebookButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          maximumSize: Size(311.0, 50.00)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.facebook,
            color: Color(0xFF3B5998),
            size: 18,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'CONTINUE WITH FACEBOOK',
            style: GoogleFonts.overpass(
              textStyle: TextStyle(
                fontSize: 13.0,
                color: Color(0XFF090F47).withOpacity(0.75),
                fontWeight: FontWeight.w700,
                height: 21.0 / 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

//Gmail Button
  Widget buildGmailButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          maximumSize: Size(311.0, 50.00)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 18,
              width: 18,
              child: Image.network(
                  'http://pngimg.com/uploads/google/google_PNG19635.png',
                  fit: BoxFit.cover)),
          SizedBox(
            width: 20,
          ),
          Text(
            'CONTINUE WITH GMAIL',
            style: GoogleFonts.overpass(
              textStyle: TextStyle(
                fontSize: 13.0,
                color: Color(0XFF090F47).withOpacity(0.75),
                fontWeight: FontWeight.w700,
                height: 21.0 / 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

//Login Button
  Widget buildLoginButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          maximumSize: Size(311.0, 50.00)),
      child: Text(
        'LOGIN',
        style: GoogleFonts.overpass(
          textStyle: TextStyle(
            fontSize: 14.0,
            color: Color(0XFF090F47).withOpacity(0.45),
            fontWeight: FontWeight.w400,
            height: 21.0 / 16.0,
          ),
        ),
      ),
    );
  }
}
