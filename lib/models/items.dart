import 'package:flutter/cupertino.dart';

class Items {
  final String id;
  final List<String> categories;
  final String title;
  final String image;
  final String price;
  final String weight;
  final String svgPic;
  final Color color;

  Items({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.image,
    @required this.price,
    @required this.weight,
    @required this.svgPic,
    @required this.color,
  });
}
