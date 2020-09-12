import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SalesCard extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
          height: deviceSize.height * 0.23,
          width: deviceSize.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.grey[400],
                offset: Offset(0, 5),
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.all(
              Radius.circular(3),
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 30,
                left: 40,
                child: Image.asset(
                  'assets/images/10 off.png',
                  width: 100,
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: Image.asset(
                  'assets/images/delergents.png',
                  width: 145,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 40,
                child: Text(
                  'Get 10% off on\n    delergents',
                  style: GoogleFonts.sourceCodePro(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red[700])),
                ),
              )
            ],
          )),
    );
  }
}
