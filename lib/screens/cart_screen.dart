import 'package:campany_task/screens/checkout_screen.dart';
import 'package:campany_task/widgets/cart_screen_widgests/badge.dart';
import 'package:campany_task/widgets/cart_screen_widgests/total_items_card.dart';
import 'package:campany_task/widgets/cart_screen_widgests/your_cart_items_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
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
                SizedBox(width: 20),
                Text(
                  'Your Cart',
                  style: GoogleFonts.questrial(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                ),
                Spacer(),
                Badge(
                  child: IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  value: '2',
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          TotalItemsCard(),
          SizedBox(height: 60),
          YourCartItemsCard(
            title: 'Oreo Biscuits',
            image: 'assets/images/oreo.jpg',
            size: '2 kg',
            price: '200',
          ),
          SizedBox(height: 35),
          YourCartItemsCard(
            title: 'Surf Excel',
            image: 'assets/images/surf.jpg',
            size: '2 L',
            price: '250',
          ),
          SizedBox(height: 35),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.center,
                width: 110,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(30),
                    left: Radius.circular(30),
                  ),
                  color: Color(0xFF1B5E20).withOpacity(0.7),
                ),
                child: Text(
                  'Rmove all',
                  style: GoogleFonts.questrial(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.center,
                width: 180,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(30),
                    left: Radius.circular(30),
                  ),
                  color: Color(0xFF1B5E20).withOpacity(0.7),
                ),
                child: Text(
                  'Continue Shopping',
                  style: GoogleFonts.questrial(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => CheckoutScreen(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF1B5E20).withOpacity(0.9),
              ),
              child: Text(
                'Proceed to checkout',
                style: GoogleFonts.questrial(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
