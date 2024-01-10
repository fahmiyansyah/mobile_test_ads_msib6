import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test_ads/paymen_verif_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Cart",
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF090F47),
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF090F47),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 29, right: 29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "2 Items in your cart",
                  style: TextStyle(
                    fontFamily: "SofiaPro",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF090F47).withOpacity(0.45),
                  ),
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          fontFamily: "SofiaPro",
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF090F47).withOpacity(0.45),
                        ),
                      ),
                      Text(
                        "Rp 185.000",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF090F47),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Delivery Address",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF090F47),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            buildAddress("assets/icons/ic1.png", "Home"),
            SizedBox(
              height: 25,
            ),
            buildAddress("assets/icons/ic2.png", "Office"),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Color(0xFF4157FF),
                    ),
                    Text(
                      "Add Address",
                      style: TextStyle(
                        fontFamily: "SofiaPro",
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF4157FF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Payment Method",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF090F47),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      buildMethod(),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //address
  Widget buildAddress(String path, String address) {
    return Container(
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    path,
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address,
                    style: GoogleFonts.overpass(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF090F47),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "(205) 555-024",
                    style: GoogleFonts.overpass(
                      textStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF090F47).withOpacity(0.45),
                      ),
                    ),
                  ),
                  Text(
                    "1786 Wheeler Bridge",
                    style: GoogleFonts.overpass(
                      textStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF090F47).withOpacity(0.45),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset("assets/icons/ic3.png"),
            ],
          )
        ],
      ),
    );
  }

  //coupon
  Widget buildCoupon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              Image.asset(
                "assets/icons/priceTag.png",
                height: 16,
                width: 16,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "1 Coupon Applied",
                style: GoogleFonts.overpass(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF27AE60),
                  ),
                ),
              ),
            ],
          ),
        ),
        Image.asset(
          "assets/icons/silang.png",
        ),
      ],
    );
  }

  //Summary
  Widget buildMethod() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/images/im1.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Credit Card",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF090F47),
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              "assets/icons/ic1.png",
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/images/im2.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Paypal",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF090F47),
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              "assets/icons/ic1.png",
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/images/im3.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Google Pay",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF090F47),
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              "assets/icons/ic1.png",
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/images/im4.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Apple Pay",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF090F47),
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              "assets/icons/ic1.png",
            ),
          ],
        ),
      ],
    );
  }

  //Button
  Widget buildButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => PaymentVerifScreen(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF4157FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          minimumSize: Size(327.0, 50.00)),
      child: Text(
        'Pay Now Rp 185.000',
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
