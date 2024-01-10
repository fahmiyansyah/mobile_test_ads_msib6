import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test_ads/product_detail_screen.dart';

class CategoryDetailScreen extends StatefulWidget {
  const CategoryDetailScreen({super.key});

  @override
  State<CategoryDetailScreen> createState() => _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends State<CategoryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Diabetes Care",
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
        padding: EdgeInsets.only(left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: buildImageBanner(),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Diabetic Diet",
                      style: GoogleFonts.overpass(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF090F47),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    buildDiabetic(),
                    SizedBox(height: 20),
                    Text(
                      "All Products",
                      style: GoogleFonts.overpass(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF090F47),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    buildAllProducts(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Banner
  Widget buildImageBanner() {
    return Container(
      height: 140,
      width: 326,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/banner.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(
            left: 23,
            right: 171,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150,
                child: Text(
                  "Save extra on every order",
                  maxLines: 2,
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1987FB),
                      height: 1.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 120,
                child: Text(
                  "Etiam mollis metus non faucibus . ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF090F47).withOpacity(0.65),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Diabetic Diet
  Widget buildDiabetic() {
    List<Map<String, dynamic>> brand = [
      {
        'imagePath': "assets/images/prod1.png",
        'brandName': "Sugar Substitute",
      },
      {
        'imagePath': "assets/images/prod2.png",
        'brandName': "Juices & Vinegars",
      },
      {
        'imagePath': "assets/images/prod3.png",
        'brandName': "Vitamins Medicines",
      },
    ];

    return SizedBox(
      height: 162,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: brand.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          Map<String, dynamic> brandd = brand[index];
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => CategoryDetailScreen(),
                //   ),
                // );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 99,
                    width: 109,
                    child: Center(
                      child: Image(
                        image: AssetImage(brandd['imagePath']),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  // Text
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    child: SizedBox(
                      width: 63,
                      child: Text(
                        brandd['brandName'],
                        textAlign: TextAlign.left,
                        style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF090F47),
                          ),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  //All Products
  Widget buildAllProducts() {
    List<Map<String, dynamic>> product = [
      {
        'imagePath': "assets/images/image1.png",
        'brandName': "Accu-check Active Test Strip",
        'brandPrice': "Rp 112.500",
      },
      {
        'imagePath': "assets/images/image2.png",
        'brandName': "Omron HEM-8712 BP Monitor",
        'brandPrice': "Rp 150.000",
      },
      {
        'imagePath': "assets/images/image3.png",
        'brandName': "Accu-check Active Test Strip",
        'brandPrice': "Rp 112.500",
      },
      {
        'imagePath': "assets/images/image4.png",
        'brandName': "Accu-check Active Test Strip",
        'brandPrice': "Rp 112.500",
      },
    ];

    return SizedBox(
      height: 500,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 20,
          mainAxisExtent: 250,
        ),
        itemCount: product.length,
        itemBuilder: (_, index) {
          Map<String, dynamic> productt = product[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(),
                ),
              );
            },
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                children: [
                  Container(
                    width: 157,
                    height: 250,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 119,
                          width: 116,
                          child: Center(
                            child: Image(
                              image: AssetImage(productt['imagePath']),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 105,
                                child: Text(
                                  productt['brandName'],
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.overpass(
                                    textStyle: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF090F47),
                                    ),
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    productt['brandPrice'],
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.overpass(
                                      textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF090F47),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 24,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      color: Color(0xFFFFC000),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 17,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "4.2",
                                          style: TextStyle(
                                            fontFamily: "SofiaPro",
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (index == 0)
                    Positioned(
                      top: 0,
                      left: 0,
                      child: ClipPath(
                        clipper: TriangleClipper(),
                        child: Container(
                          padding: EdgeInsets.only(left: 15),
                          color: Color(0xFFFF5A5A),
                          width: 57.5,
                          height: 57.5,
                          child: Transform.rotate(
                            angle: -0.7,
                            child: Text(
                              "SALE",
                              style: GoogleFonts.overpass(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (index == 1)
                    Positioned(
                      top: 0,
                      left: 0,
                      child: ClipPath(
                        clipper: TriangleClipper(),
                        child: Container(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          color: Color(0xFFFFC618),
                          width: 57.5,
                          height: 57.5,
                          child: Transform.rotate(
                            angle: -0.7,
                            child: Text(
                              "15%OFF",
                              style: GoogleFonts.overpass(
                                textStyle: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
