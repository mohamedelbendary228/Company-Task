import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SalesCard2 extends StatelessWidget {
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
                top: 35,
                left: -15,
                child: Image.asset(
                  'assets/images/buy 1.jpg',
                  width: 200,
                ),
              ),
              Positioned(
                top: 15,
                right: 50,
                child: Image.asset(
                  'assets/images/elvive.jpg',
                  width: 120,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 20,
                child: Text(
                  'Buy 1 bottle of shampoo and\n get conditioner one FREE',
                  style: GoogleFonts.sourceCodePro(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.5,
                      color: Colors.red[700],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
