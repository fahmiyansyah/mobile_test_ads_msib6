import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              ],
            ),
          )
        ],
      ),
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
    return SizedBox(
      height: 98,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Column(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Image(
                        image: AssetImage("assets/icons/cat1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //Text
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: 48,
                    child: Text(
                      "Category",
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
            );
          }),
    );
  }

  // //Deals Of the day
  // Widget buildDeals() {}
  // //Featured Brands
  // Widget buildFeaturedBrands() {}
}
