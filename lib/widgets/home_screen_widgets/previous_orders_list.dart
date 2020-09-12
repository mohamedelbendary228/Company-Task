import 'package:campany_task/widgets/home_screen_widgets/previous_orders.dart';
import 'package:flutter/material.dart';

class PreviousOrdersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height * 0.26,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            PreviousOrders(
              image: 'assets/images/tata salt lite.png',
              price: '30',
              name: 'TATA Sale Lite',
              weight: '1 kg',
            ),
            SizedBox(width: 20),
            PreviousOrders(
              image: 'assets/images/king soyabean.png',
              price: '120',
              name: "King's Refine Soyabean Oil",
              weight: '1 L',
            ),
          ],
        ),
      ),
    );
  }
}
