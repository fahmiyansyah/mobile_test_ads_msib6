import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test_ads/notif_screen.dart';
import 'package:mobile_test_ads/sign_up_screen.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
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
                builder: (context) => SignupScreen(),
              ),
            );
          },
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 31),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildOTP(context),
                  buildOTP(context),
                  buildOTP(context),
                  buildOTP(context),
                  buildOTP(context),
                  buildOTP(context),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: buildSubmitButton(),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  "The verify code will expire in 00:59",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF090F47).withOpacity(0.45),
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Resend Code",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF4157FF),
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )),
    );
  }

  //Text
  Widget buildText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Enter the verify code",
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xFF090F47),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "We just send you a verification code via phone ",
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF090F47).withOpacity(0.45),
            ),
          ),
        ),
        Text(
          "+62 821 39 488 953",
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF090F47).withOpacity(0.45),
            ),
          ),
        ),
      ],
    );
  }

  //OTP
  Widget buildOTP(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headlineSmall,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        onSaved: (value) {},
        decoration: const InputDecoration(
          hintText: '0',
          border: InputBorder.none,
        ),
      ),
    );
  }

  //Submit Button
  Widget buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => NotifScreen(),
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
        'SUBMIT CODE',
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
}
