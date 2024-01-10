import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test_ads/cart_screen.dart';
import 'package:mobile_test_ads/category_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
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
            Navigator.pop(context);
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
            Center(
              child: Container(
                height: 140,
                width: 327,
                child: SizedBox(
                  height: 131,
                  width: 131.49,
                  child: buildImage("assets/images/image2.png"),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            buildProductName(),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 400,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildPackage(),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Product Details",
                      style: GoogleFonts.overpass(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF090F47),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(width: 320, child: buildDetail()),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Rating and Reviews",
                      style: GoogleFonts.overpass(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF090F47),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildR2(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: buildGotoCart(context)),
          ],
        ),
      ),
    );
  }

  //Text
  Widget buildText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sugar Free Gold Low Calories",
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xFF090F47),
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          "Etiam mollis metus non purus ",
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

  //Image
  Widget buildImage(String path) {
    return Image(
      image: AssetImage(path),
      fit: BoxFit.contain,
    );
  }

  //Product Name
  Widget buildProductName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rp 56.000",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF090F47),
                ),
              ),
            ),
            Text(
              "Etiam mollis ",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF090F47).withOpacity(0.45),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          child: Row(
            children: [
              Image.asset(
                "assets/icons/addBlue.png",
                height: 16,
                width: 16,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Add to cart",
                style: GoogleFonts.overpass(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF006AFF),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  //Package Size
  Widget buildPackage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Package Size",
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF090F47),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 68,
              width: 79,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFFFA41B),
                  ),
                  borderRadius: BorderRadius.all(Radius.elliptical(6, 6))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rp 252.000",
                    style: GoogleFonts.overpass(
                      textStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFFA41B),
                      ),
                    ),
                  ),
                  Text(
                    "500 pellets",
                    style: GoogleFonts.overpass(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFA41B),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 68,
              width: 79,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(6, 6))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rp 100.000",
                    style: GoogleFonts.overpass(
                      textStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF090F47),
                      ),
                    ),
                  ),
                  Text(
                    "110 pellets",
                    style: GoogleFonts.overpass(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF090F47),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 68,
              width: 79,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(6, 6))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rp 160.000",
                    style: GoogleFonts.overpass(
                      textStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF090F47),
                      ),
                    ),
                  ),
                  Text(
                    "300 pellets",
                    style: GoogleFonts.overpass(
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF090F47),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  //Product Detail
  Widget buildDetail() {
    return Text(
      "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
      style: GoogleFonts.overpass(
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: Color(0xFF090F47).withOpacity(0.45),
        ),
      ),
    );
  }

  //Rating and Reviews
  Widget buildR2() {
    return Column(
      children: [
        Container(
          height: 101,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "4.4",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF090F47),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFC000),
                        size: 30,
                      )
                    ],
                  ),
                  Container(
                    width: 106,
                    child: Text(
                      "923 Ratings and 257 Reviews",
                      style: GoogleFonts.overpass(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF090F47).withOpacity(0.45),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(width: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "5",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF090F47).withOpacity(0.45),
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFC000),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 3,
                        width: 120,
                        color: Color(0xFF4157FF),
                      ),
                      Container(
                        height: 3,
                        width: 20,
                        color: Color(0xFF000000).withOpacity(0.10),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "67%",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF090F47).withOpacity(0.45),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "4",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF090F47).withOpacity(0.45),
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFC000),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 3,
                        width: 50,
                        color: Color(0xFF4157FF),
                      ),
                      Container(
                        height: 3,
                        width: 90,
                        color: Color(0xFF000000).withOpacity(0.10),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "20%",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF090F47).withOpacity(0.45),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "3",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF090F47).withOpacity(0.45),
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFC000),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 3,
                        width: 30,
                        color: Color(0xFF4157FF),
                      ),
                      Container(
                        height: 3,
                        width: 110,
                        color: Color(0xFF000000).withOpacity(0.10),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "7%",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF090F47).withOpacity(0.45),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "2",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF090F47).withOpacity(0.45),
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFC000),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 3,
                        width: 0,
                        color: Color(0xFF4157FF),
                      ),
                      Container(
                        height: 3,
                        width: 140,
                        color: Color(0xFF000000).withOpacity(0.10),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "0%",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF090F47).withOpacity(0.45),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "1",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF090F47).withOpacity(0.45),
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFC000),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 3,
                        width: 10,
                        color: Color(0xFF4157FF),
                      ),
                      Container(
                        height: 3,
                        width: 130,
                        color: Color(0xFF000000).withOpacity(0.10),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "2%",
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF090F47).withOpacity(0.45),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lorem Hoffman",
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF090F47),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xFFFFC000),
                      size: 15,
                    ),
                    Text(
                      "4.2",
                      style: GoogleFonts.overpass(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF090F47).withOpacity(0.45),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Text(
              "05- oct 2023",
              style: GoogleFonts.overpass(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF090F47).withOpacity(0.45),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ",
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Color(0xFF090F47).withOpacity(0.45),
            ),
          ),
        )
      ],
    );
  }

  //Go to cart button
  Widget buildGotoCart(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CartScreen(),
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
        'GO TO CART',
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
