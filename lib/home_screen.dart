import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_test_ads/category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 260,
            color: Colors.white,
            child: Stack(
              children: [
                Positioned.fill(child: buildBlueContainer()),
                Positioned(
                    top: 189,
                    left: (MediaQuery.of(context).size.width - 327) / 2,
                    child: buildSearchField()),
              ],
            ),
          ),
          Container(
            height: 530,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top Categories",
                      style: GoogleFonts.overpass(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF090F47),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    buildCategories(),
                    SizedBox(height: 35),
                    Center(child: buildImageBanner()),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Deals of the Day",
                          style: GoogleFonts.overpass(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF090F47),
                            ),
                          ),
                        ),
                        Text(
                          "More",
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
                    SizedBox(height: 20),
                    buildDeals(),
                    SizedBox(height: 20),
                    Text(
                      "Featured Brands",
                      style: GoogleFonts.overpass(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF090F47),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    buildFeaturedBrands(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: buildBottomBar(context),
    );
  }

  //Top Content
  Widget buildBlueContainer() {
    return Stack(
      children: [
        Container(
          height: 215,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF4157FF), Color(0xFF3D50E7)],
            ),
          ),
        ),
        Positioned(
          top: 61,
          left: -211,
          child: Container(
              width: 412,
              height: 412,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.elliptical(412, 412)),
              )),
        ),
        Positioned(
          top: 52,
          left: 26,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      image: DecorationImage(
                          image: AssetImage("assets/images/profile_image.webp"),
                          fit: BoxFit.fitWidth),
                      borderRadius: BorderRadius.all(Radius.elliptical(42, 42)),
                    ),
                  ),
                  SizedBox(width: 250),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Image.asset("assets/icons/icon home1.png"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Image.asset("assets/icons/icon home2.png"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hi, Lorem",
                style: GoogleFonts.overpass(
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "Welcome to Apotech",
                style: GoogleFonts.overpass(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //Searcg Field
  Widget buildSearchField() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(56), color: Colors.white),
      height: 50,
      width: 327,
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search Medicine & Healthcare products',
            hintStyle: GoogleFonts.overpass(
              textStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF090F47).withOpacity(0.45),
              ),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(
                Icons.search,
                color: Color(0xFF090F47).withOpacity(0.45),
              ),
            ),
          ),
          style: GoogleFonts.overpass(
            textStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xFF090F47),
            ),
          ),
        ),
      ),
    );
  }

  //Top Categories
  Widget buildCategories() {
    List<Map<String, dynamic>> categories = [
      {
        'color': [Color(0xFFFF9598), Color(0xFFFF70A7)],
        'imagePath': "assets/icons/cat1.png",
        'categoryName': "Dental",
      },
      {
        'color': [Color(0xFF19E5A5), Color(0xFF15BD92)],
        'imagePath': "assets/icons/cat2.png",
        'categoryName': "Wellness",
      },
      {
        'color': [Color(0xFFFFC06F), Color(0xFFFF793A)],
        'imagePath': "assets/icons/cat3.png",
        'categoryName': "Homeo",
      },
      {
        'color': [Color(0xFF4DB7FF), Color(0xFF3E7DFF)],
        'imagePath': "assets/icons/cat4.png",
        'categoryName': "Eye Care",
      },
      {
        'color': [Color(0xFF828282), Color(0xFF090F47)],
        'imagePath': "assets/icons/cat5.png",
        'categoryName': "Skin & Hair",
      },
    ];

    return SizedBox(
      height: 98,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          Map<String, dynamic> category = categories[index];

          return Padding(
            padding: const EdgeInsets.only(right: 32),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetailScreen(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: category['color'],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Image(
                        image: AssetImage(category['imagePath']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Text
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: 48,
                    child: Text(
                      category['categoryName'],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.overpass(
                        textStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF090F47).withOpacity(0.95),
                        ),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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

  // Deals Of the day
  Widget buildDeals() {
    List<Map<String, dynamic>> brand = [
      {
        'imagePath': "assets/images/brand1_image.png",
        'brandName': "Accu-check Active Test Strip",
        'brandPrice': "Rp 112.500",
      },
      {
        'imagePath': "assets/images/brand2_image.png",
        'brandName': "Omron HEM-8712 BP Monitor",
        'brandPrice': "Rp 150.000",
      },
      {
        'imagePath': "assets/images/brand1_image.png",
        'brandName': "Accu-check Active Test Strip",
        'brandPrice': "Rp 112.500",
      },
    ];

    return SizedBox(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: brand.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          Map<String, dynamic> brandd = brand[index];

          return Padding(
            padding: const EdgeInsets.only(right: 5),
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
                children: [
                  Container(
                    height: 154,
                    width: 178,
                    child: Center(
                      child: Image(
                        height: 134,
                        width: 109,
                        image: AssetImage(brandd['imagePath']),
                      ),
                    ),
                  ),
                  // Text
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 105,
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
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              brandd['brandPrice'],
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
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

  // Featured Brands
  Widget buildFeaturedBrands() {
    List<Map<String, dynamic>> brand = [
      {
        'imagePath': "assets/images/himalaya-logo.jpg",
        'brandName': "Himalaya Wellness",
      },
      {
        'imagePath': "assets/images/accu chek.jpeg",
        'brandName': "Accu-Chek",
      },
      {
        'imagePath': "assets/images/vlcc.png",
        'brandName': "Vlcc",
      },
      {
        'imagePath': "assets/images/protinex.avif",
        'brandName': "Protinex",
      },
    ];

    return SizedBox(
      height: 126,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: brand.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          Map<String, dynamic> brandd = brand[index];
          return Padding(
            padding: const EdgeInsets.only(right: 25),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    width: 80,
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
                      width: 80,
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

  // Bottom Bar
  Widget buildBottomBar(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      iconSize: 25,
      selectedItemColor: Color(0xFF4157FF),
      unselectedItemColor: Color(0xFF090F47).withOpacity(0.45),
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });

        switch (index) {
          case 0:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
            break;
          case 1:
            //  Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => NotifScreen(),
            //     ),
            //   );
            break;
          case 2:
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => AddScreen(),
            //   ),
            // );
            break;
          case 3:
            //  Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => CartScreen(),
            //     ),
            //   );
            break;
          case 4:
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => ProfileScreen(),
            //   ),
            // );
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
            icon: Image.asset("assets/icons/home.png"), label: 'Home'),
        BottomNavigationBarItem(
            icon: Image.asset("assets/icons/notif.png"), label: 'Notif'),
        BottomNavigationBarItem(
            icon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(6, 6)),
                  color: Color(0xFF4157FF),
                ),
                child: Image.asset("assets/icons/add.png")),
            label: 'Add'),
        BottomNavigationBarItem(
            icon: Image.asset("assets/icons/cart.png"), label: 'Cart'),
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/username.png",
              color: Color(0xFF090F47).withOpacity(0.45),
            ),
            label: 'Profile'),
      ],
    );
  }
}
