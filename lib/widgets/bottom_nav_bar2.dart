import 'package:campany_task/screens/cart_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar2 extends StatefulWidget {
  @override
  _BottomNavBar2State createState() => _BottomNavBar2State();
}

class _BottomNavBar2State extends State<BottomNavBar2> {
  List<IconData> _icons = [
    Icons.home,
    Icons.shopping_cart,
    Icons.bookmark,
    Icons.person,
  ];

  Widget _buildIcons(int index) {
    return InkWell(
      onTap: () {
        if (index == 1) {
          Navigator.of(context).push<int>(
            MaterialPageRoute(
              builder: (ctx) => CartScreen(),
            ),
          );
        }
      },
      child: Icon(
        _icons[index],
        size: 27,
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      child: Container(
        width: deviceSize.width,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildIcons(0),
              _buildIcons(1),
              _buildIcons(2),
              _buildIcons(3),
            ],
          ),
        ),
      ),
    );
  }
}
