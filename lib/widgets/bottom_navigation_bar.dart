import 'package:campany_task/screens/cart_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  List<IconData> _icons = [
    Icons.home,
    Icons.shopping_cart,
    Icons.bookmark,
    Icons.person,
  ];

  Widget _buildIcons(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        if (index == 1) {
          Navigator.of(context).push<int>(
            MaterialPageRoute(
              builder: (ctx) => CartScreen(),
            ),
          );
          setState(() {
            _selectedIndex = 0;
          });
        }
      },
      child: Icon(
        _icons[index],
        size: _selectedIndex == index ? 32 : 27,
        color: _selectedIndex == index ? Colors.grey[800] : Colors.grey,
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