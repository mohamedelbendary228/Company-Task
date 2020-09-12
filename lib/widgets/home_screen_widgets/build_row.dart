import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildRow extends StatelessWidget {
  final String text;
  BuildRow({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 65,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 3),
              decoration: BoxDecoration(
                color: Color(0xFF1B5E20).withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('See All',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
