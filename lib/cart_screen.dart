import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test_ads/payment_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CartScreen> {
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
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Color(0xFF4157FF),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Add More",
                        style: TextStyle(
                          fontFamily: "SofiaPro",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF006AFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            buildCartList("assets/images/prod2.png", "Rp 25.000"),
            SizedBox(
              height: 30,
            ),
            buildCartList("assets/images/prod3.png", "Rp 18.000"),
            SizedBox(
              height: 50,
            ),
            buildCoupon(),
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
                        "Payment Summary",
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
                      buildSummary(),
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

  //Cart
  Widget buildCartList(String path, String price) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            path,
            height: 80,
            width: 70,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sugar free gold",
                    style: GoogleFonts.overpass(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF090F47),
                      ),
                    ),
                  ),
                  Text(
                    "bottle of 500 pellets",
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
              Text(
                price,
                style: GoogleFonts.overpass(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF090F47),
                  ),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset("assets/icons/silang.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Color(0xFFDFE3FF)),
                    child: Image.asset("assets/icons/decrease.png"),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                      fontFamily: "SofiaPro",
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Color(0xFFA0ABFF)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
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
  Widget buildSummary() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Order Total",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF090F47).withOpacity(0.45),
                ),
              ),
            ),
            Text(
              "Rp 228.800",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF090F47),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Items Discount",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF090F47).withOpacity(0.45),
                ),
              ),
            ),
            Text(
              "- Rp 28.800",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF090F47),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coupon Discount",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF090F47).withOpacity(0.45),
                ),
              ),
            ),
            Text(
              "- Rp 15.800",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF090F47),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Shipping",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF090F47).withOpacity(0.45),
                ),
              ),
            ),
            Text(
              "Free",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF090F47),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF090F47),
                ),
              ),
            ),
            Text(
              "Rp 185.000",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF090F47),
                ),
              ),
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
            builder: (context) => PaymentScreen(),
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
        'Place Order @ Rp 185.000',
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
