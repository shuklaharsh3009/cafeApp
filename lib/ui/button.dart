import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double? idPressed = 1.0;

class FillSizeButton extends StatefulWidget {

  final double idSelf;
  final String txt;
  final double sw;
  final double sh;

  const FillSizeButton({
    super.key,
    required this.idSelf,
    required this.txt,
    required this.sw,
    required this.sh,
  });

  @override
  State<FillSizeButton> createState() => _FillSizeButtonState();
}

class _FillSizeButtonState extends State<FillSizeButton> {

  late Color backColor;
  late Color textColor;
  @override
  void initState(){
    super.initState();
    if( widget.idSelf == idPressed) {
      backColor = Colors.green;
      textColor = Colors.white;
    } else {
      backColor = Colors.white;
      textColor = Colors.black;
    }
    Timer.periodic( const Duration(milliseconds: 500), (timer) {
      setState(() {
        if( widget.idSelf == idPressed) {
          backColor = Colors.green;
          textColor = Colors.white;
        } else {
          backColor = Colors.white;
          textColor = Colors.black;
        }
      });
    });
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          idPressed = widget.idSelf;
          backColor = Colors.green;
          textColor = Colors.white;
        });
      },
      child: Container(
        width: widget.sw*0.2,
        height: widget.sh*0.05,
        margin: EdgeInsets.only( right: widget.sw*0.02 ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular( widget.sw*0.03 ),
          color: backColor,
        ),
        child: Center(
          child: Text(
            widget.txt,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: textColor,
                fontSize: widget.sw*0.037,
              ),
            ),
          ),
        ),
      ),
    );
  }
}