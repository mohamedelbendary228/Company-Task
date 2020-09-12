import 'package:campany_task/screens/descreption_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String weight;
  final String price;
  final String svgPicture;
  final Color color;

  CardItem({
    this.id,
    this.title,
    this.image,
    this.weight,
    this.price,
    this.svgPicture,
    this.color,
  });

  void selectedItem(BuildContext context) {
    Navigator.of(context).pushNamed(DescreptionScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedItem(context),
      child: Container(
          decoration: BoxDecoration(
            color: color,
            gradient: LinearGradient(
              colors: [
                color,
                color.withOpacity(0.7),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: Colors.grey[400],
                offset: Offset(0, 5),
              )
            ],
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 15,
                left: 20,
                child: Container(
                  alignment: Alignment.center,
                  
                  width: 90,
                  height: 120,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                right: 10,
                child: Column(
                  children: <Widget>[
                    Icon(Icons.shopping_cart, size: 20, color: Colors.white),
                    SizedBox(height: 5),
                    Icon(Icons.bookmark, size: 20, color: Colors.white),
                  ],
                ),
              ),
              Positioned(
                top: 130,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 110,
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      weight,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          svgPicture,
                          color: Colors.white,
                          width: 12,
                        ),
                        SizedBox(width: 5),
                        Text(
                          price,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
