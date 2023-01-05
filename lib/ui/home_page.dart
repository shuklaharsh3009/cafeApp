import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe/colors/colors.dart';
import 'package:swift_cafe/ui/buy_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ super.key });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double sw = screenWidth;
    double sh = screenHeight;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          color: backGrey,
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top area with search bar
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/back_top.jpg"),
                          fit: BoxFit.cover
                        ),
                      ),
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur( sigmaX: 5.0, sigmaY: 5.0 ),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: screenWidth*0.05),
                            color: Colors.white.withOpacity(0.2),
                            child: Column(
                              children: [
                                SizedBox(height: screenHeight*0.055,),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: sw*0.1,
                                      height: sh*0.05,
                                      child: Icon(Icons.waving_hand_rounded, color: Colors.amber.shade400,size: sw*0.08,)
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: sw*0.3,
                                          child: Text(
                                            "20/12/2022",
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                color: Colors.white.withOpacity(0.3),

                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: sw*0.35,
                                          child: Text(
                                            "Harsh Shukla",
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                color: Colors.white.withOpacity(0.3),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: screenWidth*0.245,),
                                    Container(
                                      width: sw*0.09,
                                      height: sw*0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(screenWidth*0.015)
                                      ),
                                      child: Image.asset('assets/cart_icon.jpg'),
                                    ),
                                    SizedBox(width: screenWidth*0.025,),
                                    SizedBox(
                                      width: sw*0.09,
                                      height: sw*0.09,
                                      child: Image.asset('assets/avatar.jpg', fit: BoxFit.fill,),
                                    ),
                                  ],
                                ),
                                SizedBox(height: screenHeight*0.02,),
                                TextField(
                                  keyboardType: TextInputType.text,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: Colors.grey.shade900,
                                    )
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Search favorite Beverages",
                                    hintStyle: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: Colors.grey.shade500,
                                      )
                                    ),
                                    prefixIcon: Icon(Icons.search, color: Colors.grey.shade500,),
                                    suffixIcon: Icon(Icons.settings, color: Colors.grey.shade500,),
                                    filled: true,
                                    isDense: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(screenWidth*0.015)
                                    ),
                                  ),
                                ),
                                SizedBox(height: screenHeight*0.03,),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight*0.01,),
                    // Section Name
                    SizedBox(
                      width: sw*0.6,
                      child: Text(
                        "   Most Popular Beverages",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight*0.01,),
                    // horizontal scroll
                    SizedBox(
                      height: screenHeight*0.36,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          hCard(sw, sh),
                          hCard(sw, sh),
                          hCard(sw, sh),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight*0.02,),
                    // Vertical Section
                    Container(
                      width: sw,
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 20.0, sigmaY: 20.0
                          ),
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: sh*0.01,),
                                Text(
                                  "   Get it instantly",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.3),
                                      fontSize: sw*0.04
                                    ),
                                  ),
                                ),
                                SizedBox(height: sh*0.01,),
                                vCard(sw, sh),
                                vCard(sw, sh),
                                vCard(sw, sh),
                                SizedBox( height: sh*0.1,),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only( top: sh*0.88, left: sw*0.05),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(sw*0.03),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(sw*0.03),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 20.0, sigmaY: 20.0
                  ),
                  child: Container(
                    width: sw*0.9,
                    height: sh*0.1,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(sw*0.03),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: sw*0.11,
                          height: sw*0.11,
                          margin: EdgeInsets.only( left: sw*0.05),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(sh*0.035),
                          ),
                          child: Center(
                            child: Image.asset('assets/home.png', scale: 0.9,),
                          ),
                        ),
                        Container(
                          width: sw*0.11,
                          height: sw*0.11,
                          margin: EdgeInsets.only( left: sw*0.06),
                          child: Center(
                            child: Image.asset('assets/profile.png', scale: 0.9,),
                          ),
                        ),
                        Container(
                          width: sw*0.11,
                          height: sw*0.11,
                          margin: EdgeInsets.only( left: sw*0.06),
                          child: Center(
                            child: Image.asset('assets/wallet.png', scale: 0.9,),
                          ),
                        ),
                        Container(
                          width: sw*0.11,
                          height: sw*0.11,
                          margin: EdgeInsets.only( left: sw*0.06),
                          child: Center(
                            child: Image.asset('assets/basket.png', scale: 0.9,),
                          ),
                        ),
                        Container(
                          width: sw*0.11,
                          height: sw*0.11,
                          margin: EdgeInsets.only( left: sw*0.06),
                          child: Center(
                            child: Image.asset('assets/chat.png', scale: 0.95,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget hCard( double sw, double sh ) {
    return Container(
      margin: EdgeInsets.all(sw*0.01),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/back_hCard.jpg"),
          fit: BoxFit.cover
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(sw*0.02),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0, sigmaY: 5.0
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute( builder: (context) => const BuyCoffee() )
              );
            },
            child: Container(
              width: sw*0.55,
              height: sh*0.35,
              color: Colors.white.withOpacity(0.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: sh*0.01,),
                  SizedBox(
                    width: sw*0.4,
                    height: sh*0.2,
                    child: Image.asset('assets/coffee.jpg', fit: BoxFit.fill,)
                  ),
                  SizedBox(height: sh*0.01,),
                  SizedBox(
                    width: sw*0.55,
                    child: Center(
                      child: Text(
                        "Hot Cappuccino",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox( width: sw*0.02,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: sw*0.4,
                            child: Text(
                              "Espresso, Steamed Milk",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: sw*0.03 ,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sw*0.4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "4.9 ",
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: sw*0.04,
                                  height: sw*0.04,
                                  child: Image.asset("assets/star.jpg"),
                                ),
                                Text(
                                  " (458)",
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox( width: sw*0.02,),
                      Container(
                        height: sw*0.08,
                        width: sw*0.08,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(sw*0.01)
                        ),
                        child: const Icon( Icons.add, color: Colors.white,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget vCard( double sw, double sh ) {
    return Container(
      margin: EdgeInsets.symmetric( vertical: sh*0.015 , horizontal: sw*0.025 ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(sw*0.03),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 5),
            blurRadius: 10,
            spreadRadius: 1
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(sw*0.03),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20.0, sigmaY: 20.0
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute( builder: (context) => const BuyCoffee() )
              );
            },
            child: Container(
              width: sw*0.95,
              padding: EdgeInsets.fromLTRB( sw*0.03, sh*0.01 , sw*0.02, sh*0.02  ),
              color: Colors.white.withOpacity(0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lattè",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                            fontSize: sw*0.055,
                          ),
                        ),
                      ),
                      SizedBox(height: sh*0.015,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "4.9 ",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: sw*0.04,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sw*0.04,
                            height: sw*0.04,
                            child: Image.asset("assets/star.jpg"),
                          ),
                          Text(
                            " (458) ",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: sw*0.04,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sw*0.04,
                            height: sw*0.04,
                            child: Image.asset("assets/green_label.jpg"),
                          ),
                        ],
                      ),
                      SizedBox(height: sh*0.015,),
                      SizedBox(
                        width: sw*0.55,
                        child: Text(
                          "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              fontSize: sw*0.035,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: sw*0.01,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Container(
                            width: sw*0.33,
                            height: sw*0.33,
                            margin: EdgeInsets.only( top: sh*0.036, bottom: sh*0.022 ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(sw*0.03),
                              child: Image.asset("assets/cc.jpg", fit: BoxFit.cover,),
                            ),
                          ),
                          Container(
                            width: sw*0.2,
                            height: sw*0.1,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(sw*0.03),
                            ),
                            child: Center(
                              child: Text(
                                "ADD",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Colors.white
                                  )
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: sh*0.2,)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}