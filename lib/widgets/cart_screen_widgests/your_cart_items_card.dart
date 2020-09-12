import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class YourCartItemsCard extends StatefulWidget {
  final String title;
  final String image;
  final String size;
  final String price;

  YourCartItemsCard({
    @required this.title,
    @required this.image,
    @required this.size,
    @required this.price,
  });

  @override
  _YourCartItemsCardState createState() => _YourCartItemsCardState();
}

class _YourCartItemsCardState extends State<YourCartItemsCard> {
  int numOfItems = 1;

  void addItem() {
    setState(() {
      numOfItems++;
    });
  }

  void removeItem() {
    if (numOfItems <= 0) {
      return;
    }
    setState(() {
      numOfItems--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 145,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey[400],
              offset: Offset(0, 5),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                widget.image,
                fit: BoxFit.cover,
                width: 130,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: GoogleFonts.questrial(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[600],
                      ),
                    ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      widget.size,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/icons/currency.svg',
                          color: Colors.grey[600],
                          width: 10,
                        ),
                        SizedBox(width: 3),
                        Text(
                          widget.price,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 22,
                          height: 18,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreen[400],
                            ),
                            child: OutlineButton(
                              padding: EdgeInsets.zero,
                              onPressed: removeItem,
                              child: Icon(
                                Icons.remove,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 22,
                          height: 18,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xFF1B5E20).withOpacity(0.7),
                            ),
                            child: Text(
                              '$numOfItems',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 22,
                          height: 18,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreen[400],
                            ),
                            child: OutlineButton(
                              padding: EdgeInsets.zero,
                              onPressed: addItem,
                              child: Icon(
                                Icons.add,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
