import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopRow extends StatelessWidget {
  final String title;
  final String image;
  TopRow({this.title, this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
      child: Row(
        children: <Widget>[
          InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.chevron_left,
                size: 40,
              )),
          SizedBox(width: 5),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            alignment: Alignment.center,
            width: 140,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(30),
                  left: Radius.circular(30),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: 30,
                ),
                Text(
                  title,
                  style: GoogleFonts.questrial(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
