import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PreviousOrders extends StatelessWidget {
  final String image;
  final String price;
  final String name;
  final String weight;

  PreviousOrders({
    @required this.image,
    @required this.price,
    @required this.name,
    @required this.weight,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 15),
            width: 140,
            height: 188,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey[400],
                  offset: Offset(0, 5),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Image.asset(
                      image,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/currency.svg',
                        width: 11,
                      ),
                      SizedBox(width: 4),
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    weight,
                    style: TextStyle(fontSize: 12),
                  ),
                  Row(
                    children: <Widget>[
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            width: 55,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 2.5),
                            decoration: BoxDecoration(
                              color: Color(0xFF1B5E20).withOpacity(0.8),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('ADD    +',
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
