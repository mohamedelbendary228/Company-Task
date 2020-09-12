import 'package:campany_task/screens/items_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesList extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  CategoriesList(
      {@required this.id, @required this.title, @required this.image});

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(ItemsScreen.routeName, arguments: {
      'id': id,
      'title': title,
      'image' : image,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () => selectCategory(context),
            child: Container(
              alignment: Alignment.center,
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(75),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: 55,
                ),
              ),
            ),
          ),
          Text(
            title,
            style: GoogleFonts.didactGothic(
              textStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
