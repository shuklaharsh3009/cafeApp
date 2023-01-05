import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe/colors/colors.dart';
import 'package:swift_cafe/ui/button.dart';
import 'package:swift_cafe/ui/home_page.dart';
import 'package:swift_cafe/ui/toggle_switch.dart';


class BuyCoffee extends StatefulWidget {
  const BuyCoffee({super.key});

  @override
  State<BuyCoffee> createState() => _BuyCoffeeState();
}

class _BuyCoffeeState extends State<BuyCoffee> {
  bool highPriority = false;
  var _nums = ["1","2","3","4","5"];
  var _currentItemSelected = "1";

  @override
  Widget build(BuildContext context) {

    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: sw,
        height: sh,
        decoration: BoxDecoration(
          color: backGrey,
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              width: sw,
              height: sh*0.5,
              margin: EdgeInsets.only( bottom: sh*0.5 ),
              child: Image.asset('assets/buyCoffee.jpg', fit: BoxFit.cover,),
            ),
            SingleChildScrollView(
              child: Container(
                width: sw,
                margin: EdgeInsets.only( top: sh*0.4 ),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/back_buyCoffee.jpg'),
                    fit: BoxFit.fill
                  ),
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(sw*0.1),
                    topRight: Radius.circular(sw*0.1),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(sw*0.1),
                    topRight: Radius.circular(sw*0.1),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 20.0, sigmaY: 20.0
                    ),
                    child: SizedBox(
                      width: sw,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: sw*0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox( height: sh*0.05, ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: sw*0.3,
                                      child: Text(
                                        "Lattè",
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                            color: Colors.white.withOpacity(0.5),
                                            fontSize: sw*0.08,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: sw*0.5,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "4.9 ",
                                            style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                color: Colors.white.withOpacity(0.3),
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
                                                color: Colors.white.withOpacity(0.3),
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
                                    ),
                                  ],
                                ),
                                Container(
                                  width: sw*0.15,
                                  height: sh*0.035,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(sw*0.02),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: DropdownButton<String>(
                                      items: _nums.map( ( String dropDownStringItem ) {
                                        return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(dropDownStringItem),
                                        );
                                      } ).toList(),
                                      onChanged: (newValSelected) {
                                        setState(() {
                                          _currentItemSelected = newValSelected!;
                                        });
                                      },
                                      value: _currentItemSelected,
                                      borderRadius: BorderRadius.circular(sw*0.02),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox( height: sh*0.02, ),
                            Text(
                              "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.3),
                                ),
                              ),
                            ),
                            SizedBox( height: sh*0.03, ),
                            Text(
                              "Choice of Cup Filling",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: sw*0.06,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            SizedBox( height: sh*0.02, ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FillSizeButton(idSelf: 1.0, txt: "Full", sw: sw, sh: sh),
                                FillSizeButton(idSelf: 0.5, txt: "1/2 Full", sw: sw, sh: sh),
                                FillSizeButton(idSelf: 0.75, txt: "3/4 Full", sw: sw, sh: sh),
                                FillSizeButton(idSelf: 0.25, txt: "1/4 Full", sw: sw, sh: sh),
                              ],
                            ),
                            SizedBox( height: sh*0.03, ),
                            Text(
                              "Choice of Milk",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: sw*0.06,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            SizedBox( height: sh*0.03, ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SwitchButton(
                                      idMilk: 2.0, milkName: "Full Cream Milk", sw: sw, sh: sh
                                    ),
                                    SizedBox( height: sh*0.02, ),
                                    SwitchButton(
                                      idMilk: 4.0, milkName: "Almond Milk", sw: sw, sh: sh
                                    ),
                                    SizedBox( height: sh*0.02, ),
                                    SwitchButton(
                                      idMilk: 6.0, milkName: "Lactose Free Milk", sw: sw, sh: sh
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SwitchButton(
                                      idMilk: 1.0, milkName: "Skim Milk", sw: sw, sh: sh
                                    ),
                                    SizedBox( height: sh*0.02, ),
                                    SwitchButton(
                                      idMilk: 3.0, milkName: "Oat Milk", sw: sw, sh: sh
                                    ),
                                    SizedBox( height: sh*0.02, ),
                                    SwitchButton(
                                      idMilk: 5.0, milkName: "Soy Milk", sw: sw, sh: sh
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox( height: sh*0.03, ),
                            Text(
                              "Choice of Sugar",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: sw*0.06,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                            SizedBox( height: sh*0.03, ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Sugar(
                                      idSug: 1.0,
                                      sugarName: "Sugar X1",
                                      sh: sh,
                                      sw: sw,
                                    ),
                                    SizedBox( height: sh*0.02, ),
                                    Sugar(
                                      idSug: 3.0,
                                      sugarName: "1/2 Sugar",
                                      sh: sh,
                                      sw: sw,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Sugar(
                                      idSug: 2.0,
                                      sugarName: "Sugar X2",
                                      sh: sh,
                                      sw: sw,
                                    ),
                                    SizedBox( height: sh*0.02, ),
                                    Sugar(
                                      idSug: 4.0,
                                      sugarName: "No Sugar",
                                      sh: sh,
                                      sw: sw,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: sh*0.17,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only( top: sh*0.85, left: sw*0.05, right: sw*0.05, bottom: sh*0.05 ),
              height: sh*0.1,
              width: sw*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(sw*0.03),
                color: barBlack,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox( width: sw*0.04,),
                  SizedBox(
                    width: sw*0.06,
                    child: Checkbox(
                      focusColor: Colors.white.withOpacity(0.3),
                      checkColor: Colors.white.withOpacity(0.3),
                      activeColor: Colors.white.withOpacity(0.3),
                      value: highPriority,
                      onChanged: (highPriority) {
                        setState(() {
                          this.highPriority = highPriority!;
                        });
                      },
                    ),
                  ),
                  SizedBox( width: sw*0.01,),
                  SizedBox(
                    width: sw*0.34,
                    child: Center(
                      child: Text(
                        "High Priority",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: sw*0.05,
                    height: sw*0.05,
                    child: Image.asset('assets/red.png', fit: BoxFit.fill,),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute( builder: (context) => const HomePage() )
                      );
                    },
                    child: Container(
                      height: sh*0.06,
                      width: sw*0.28,
                      margin: EdgeInsets.only( left: sw*0.06),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(sw*0.03),
                        gradient: LinearGradient(
                          colors: [
                            Colors.green.shade700,
                            Colors.green,
                          ],
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: sw*0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}