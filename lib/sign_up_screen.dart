import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test_ads/login_screen.dart';
import 'package:mobile_test_ads/verify_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
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
                builder: (context) => LoginScreen(),
              ),
            );
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 31),
            child: Text(
              "Crete Your Account",
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
            height: 20,
          ),
          Center(child: buildCreateAccountButton(context)),
          Center(child: buildLoginButton(context)),
        ],
      ),
    );
  }

//Textfield
  Widget buildTextField(BuildContext context) {
    bool isObscure = true;
    TextEditingController nameController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 31),
          height: 50,
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
                label: Text(
                  "Your name",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF090F47).withOpacity(0.45),
                    ),
                  ),
                ),
                hintText: 'Name',
                contentPadding: EdgeInsets.only(bottom: 17),
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontFamily: "Arial",
                  fontSize: 15.0,
                  color: const Color(0xFF090F47).withOpacity(0.45),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always),
            style: TextStyle(
              fontFamily: "Arial",
              fontSize: 15.0,
              color: const Color(0xFF090F47),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 31),
          height: 50,
          child: TextField(
            controller: numberController,
            decoration: InputDecoration(
                label: Text(
                  "Mobile Number",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF090F47).withOpacity(0.45),
                    ),
                  ),
                ),
                hintText: 'Mobile Number',
                contentPadding: EdgeInsets.only(bottom: 17),
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontFamily: "Arial",
                  fontSize: 15.0,
                  color: const Color(0xFF090F47).withOpacity(0.45),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always),
            style: TextStyle(
              fontFamily: "Arial",
              fontSize: 15.0,
              color: const Color(0xFF090F47),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 31),
          height: 50,
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
                label: Text(
                  "Email",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF090F47).withOpacity(0.45),
                    ),
                  ),
                ),
                hintText: 'Email',
                contentPadding: EdgeInsets.only(bottom: 17),
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontFamily: "Arial",
                  fontSize: 15.0,
                  color: const Color(0xFF090F47).withOpacity(0.45),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always),
            style: TextStyle(
              fontFamily: "Arial",
              fontSize: 15.0,
              color: const Color(0xFF090F47),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 31),
          height: 50,
          child: Container(
            height: 50,
            child: TextField(
              controller: passwordController,
              obscureText: isObscure,
              decoration: InputDecoration(
                label: Text(
                  "Password",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF090F47).withOpacity(0.45),
                    ),
                  ),
                ),
                hintText: 'Password',
                contentPadding: EdgeInsets.only(bottom: 17),
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontFamily: "Arial",
                  fontSize: 15.0,
                  color: const Color(0xFF090F47).withOpacity(0.45),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: IconButton(
                  icon: Icon(
                    isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Color(0xFF090F47).withOpacity(0.45),
                  ),
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                ),
              ),
              style: TextStyle(
                fontFamily: "Arial",
                fontSize: 15.0,
                color: const Color(0xFF090F47),
              ),
            ),
          ),
        ),
      ],
    );
  }

//Create button
  Widget buildCreateAccountButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => VerifyScreen(),
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
        'CREATE ACCOUNT',
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

//Login
  Widget buildLoginButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
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
            'Already have account?  Login',
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
