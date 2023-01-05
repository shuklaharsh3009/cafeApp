import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe/colors/colors.dart';
import 'package:swift_cafe/ui/home_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight*1.2,
          width: screenWidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/back.jpg'), 
              fit: BoxFit.fill
            )
          ),
          child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: screenWidth*0.005,
                    spreadRadius: screenWidth*0.003,
                    color: Colors.black.withOpacity(0.2),
                  )
                ]
              ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth*0.05),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: Container(
                  margin: EdgeInsets.fromLTRB( screenWidth*0.05, screenHeight*0.1, screenWidth*0.05, screenHeight*0.1 ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth*0.05),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                      style: BorderStyle.solid,
                      width: screenWidth*0.005,
                    ),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB( screenHeight*0.015, screenHeight*0.03, 0, screenHeight*0.03  ),
                        child: Image.asset('assets/logo.jpg')
                      ),
                      Text(
                        "Swift",
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight*0.05,
                          ),
                        )
                      ),
                      Text(
                        "Café",
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: screenHeight*0.04,
                          ),
                        )
                      ),
                      SizedBox(height: screenHeight*0.005,),
                      Text(
                        "'Latte but never late'",
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            shadows: [
                              Shadow(
                                color: Colors.white.withOpacity(0.4),
                                blurRadius: 6,
                                offset: const Offset(0, 6)
                              ),
                              Shadow(
                                color: Colors.white.withOpacity(0.4),
                                blurRadius: 6,
                                offset: const Offset(0, -6)
                              ),
                            ],
                            color: Colors.white,
                          ),
                        )
                      ),
                      SizedBox(height: screenHeight*0.02,),
                      // UserName Input box.
                      Container(
                        width: screenWidth*0.7,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            focusColor: Colors.white,
                            labelText: " Username",
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)
                            ),
                            enabled: true,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight*0.02,),
                      // PassWord Input Box.
                      Container(
                        width: screenWidth*0.7,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          obscuringCharacter: '*',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            focusColor: Colors.white,
                            labelText: " Password",
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)
                            ),
                            enabled: true,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight*0.1,),
                      // Login Button.
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context, 
                            MaterialPageRoute( builder: (context) =>const HomePage() )
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: screenHeight*0.015),
                          width: screenWidth*0.6,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 1,
                                blurRadius: 10
                              ),
                            ],
                            gradient: LinearGradient(
                              colors:  [
                                darkBrown,
                                lightBrown,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(screenHeight*0.1),
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight*0.028
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight*0.05,),
                      // Register Button.
                      Container(
                        padding: EdgeInsets.symmetric(vertical: screenHeight*0.015),
                        width: screenWidth*0.6,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(screenHeight*0.1),
                        ),
                        child: Center(
                          child: Text(
                            "Register",
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: screenHeight*0.028
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight*0.03,),
                      Text(
                        "Privacy Policy",
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ),
                      SizedBox(height: screenHeight*0.025,),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}