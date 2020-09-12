import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SidebarItems extends StatelessWidget {
  final String svgPic;
  final String title;

  SidebarItems({this.svgPic, this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(
          svgPic,
          color: Colors.white,
          width: 18,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: GoogleFonts.questrial(
            textStyle: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
