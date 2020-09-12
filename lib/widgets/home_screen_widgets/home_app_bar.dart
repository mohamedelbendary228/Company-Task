import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {

  final Function onPressed;
  HomeAppBar({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.sort, size: 35, color: Colors.black,),
          onPressed: onPressed,
        ),
        SizedBox(width: 10),
        Text(
          'Company',
          style: GoogleFonts.questrial(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        Spacer(),
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.black,
            width: 23,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 5),
        IconButton(
          icon: Icon(Icons.notifications, size: 30),
          onPressed: () {},
        )
      ],
    );
  }
}
