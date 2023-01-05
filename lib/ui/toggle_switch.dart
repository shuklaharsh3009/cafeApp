import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double? idPressedMilk = 2.0;
double? idSugar = 2.0;

class SwitchButton extends StatefulWidget {
  
  final double idMilk;
  final String milkName;
  final double sw;
  final double sh;

  const SwitchButton({
    super.key,
    required this.idMilk,
    required this.milkName,
    required this.sw,
    required this.sh,
  });

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {

  late bool isActive;
  @override
  void initState(){
    super.initState();
    if( widget.idMilk == idPressedMilk) {
      isActive = true;
    } else {
      isActive = false;
    }
    Timer.periodic( const Duration(milliseconds: 500), (timer) {
      setState(() {
        if( widget.idMilk == idPressedMilk) {
          isActive = true;
        } else {
          isActive = false;
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
    return SizedBox(
      width: widget.sw*0.45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: widget.sw*0.2,
            child: Switch(
              value: isActive, 
              onChanged: (isActive){
                setState(() {
                  idPressedMilk = widget.idMilk;
                  isActive = true;
                });
              },
              activeColor: Colors.green,
              inactiveTrackColor: Colors.white.withOpacity(0.5),
              inactiveThumbColor: Colors.white.withOpacity(0.7),
            ),
          ),
          SizedBox(
            width: widget.sw*0.25,
            child: Text(
              widget.milkName,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Sugar extends StatefulWidget {
  
  final double idSug;
  final String sugarName;
  final double sw;
  final double sh;

  const Sugar({
    super.key,
    required this.idSug,
    required this.sugarName,
    required this.sw,
    required this.sh,
  });

  @override
  State<Sugar> createState() => _SugarState();
}

class _SugarState extends State<Sugar> {

  late bool isAct;
  @override
  void initState(){
    super.initState();
    if( widget.idSug == idSugar) {
      isAct = true;
    } else {
      isAct = false;
    }
    Timer.periodic( const Duration(milliseconds: 500), (timer) {
      setState(() {
        if( widget.idSug == idSugar) {
          isAct = true;
        } else {
          isAct = false;
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
    return SizedBox(
      width: widget.sw*0.45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: widget.sw*0.2,
            child: Switch(
              value: isAct, 
              onChanged: (isAct){
                setState(() {
                  idSugar = widget.idSug;
                  isAct = true;
                });
              },
              activeColor: Colors.green,
              inactiveTrackColor: Colors.white.withOpacity(0.5),
              inactiveThumbColor: Colors.white.withOpacity(0.7),
            ),
          ),
          SizedBox(
            width: widget.sw*0.25,
            child: Text(
              widget.sugarName,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}