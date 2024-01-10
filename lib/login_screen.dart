import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test_ads/home_screen.dart';
import 'package:mobile_test_ads/sign_up_screen.dart';
import 'package:mobile_test_ads/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF090F47),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => WelcomeScreen(),
              ),
            );
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 31),
                child: Text(
                  "Welcome Back!",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF090F47),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              buildTextField(context),
              SizedBox(
                height: 100,
              ),
              Center(child: buildSigninButton(context)),
            ],
          ),
          buildSignupButton(context),
        ],
      ),
    );
  }

//Textfield
  Widget buildTextField(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 50,
          child: TextField(
            controller: usernameController,
            decoration: InputDecoration(
              prefixIcon: Image.asset(
                "assets/icons/username.png",
                height: 16,
                width: 13,
              ),
              hintText: 'Username',
              border: InputBorder.none,
              hintStyle: TextStyle(
                fontFamily: "Arial",
                fontSize: 15.0,
                color: const Color(0xFF090F47).withOpacity(0.45),
              ),
            ),
            style: TextStyle(
              fontFamily: "Arial",
              fontSize: 15.0,
              color: const Color(0xFF090F47),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 100,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      "assets/icons/lock.png",
                      height: 16,
                      width: 13,
                    ),
                    hintText: 'Password',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontFamily: "Arial",
                      fontSize: 15.0,
                      color: const Color(0xFF090F47).withOpacity(0.45),
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: "Arial",
                    fontSize: 15.0,
                    color: const Color(0xFF090F47),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot?',
                  style: TextStyle(
                    fontFamily: "Arial",
                    fontSize: 12.0,
                    color: const Color(0xFF090F47).withOpacity(0.45),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

//Signin button
  Widget buildSigninButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF4157FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          minimumSize: Size(311.0, 50.00)),
      child: Text(
        'SIGN IN',
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

  //SignUp
  Widget buildSignupButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignupScreen(),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_back_ios_rounded,
            size: 8,
            color: Color(0xFF090F47).withOpacity(0.45),
          ),
          Text(
            'Don’t have an account? Sign Up',
            style: TextStyle(
              fontFamily: "SofiaPro",
              fontSize: 14.0,
              color: Color(0xFF090F47).withOpacity(0.45),
              fontWeight: FontWeight.w300,
              height: 21.0 / 16.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
