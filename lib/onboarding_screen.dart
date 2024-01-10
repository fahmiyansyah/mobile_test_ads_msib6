import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test_ads/welcome_screen.dart';

class Walkthrough1 extends StatefulWidget {
  const Walkthrough1({super.key});

  @override
  State<Walkthrough1> createState() => _WalkthroughtState();
}

class _WalkthroughtState extends State<Walkthrough1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "View and buy Medicine online",
            body:
                "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
            image: Center(
              child: Image.asset("assets/images/walkthrough_image1.png",
                  height: 284.0),
            ),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "Online medical & Healthcare",
            body:
                "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
            image: Center(
              child: Image.asset("assets/images/walkthrough_image2.png",
                  height: 284.0),
            ),
            decoration: getPageDecoration(),
          ),
        ],
        done: Text(
          'Done',
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF4157FF),
            ),
          ),
        ),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => WelcomeScreen(),
            ),
          );
        },
        showNextButton: true,
        next: Text(
          "Next",
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF4157FF),
            ),
          ),
        ),
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF090F47).withOpacity(0.45),
            ),
          ),
        ),
      ),
    );
  }

  PageDecoration getPageDecoration() {
    return PageDecoration(
      titleTextStyle: GoogleFonts.overpass(
        textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Color(0xFF090F47),
        ),
      ),
      bodyTextStyle: GoogleFonts.overpass(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Color(0xFF090F47).withOpacity(0.45),
        ),
      ),
      bodyPadding: EdgeInsets.only(left: 60, right: 60, top: 20),
      titlePadding: EdgeInsets.only(left: 68, right: 68, top: 20),
      imageAlignment: Alignment.center,
      imagePadding: EdgeInsets.only(top: 78, left: 59, right: 59),
    );
  }
}
