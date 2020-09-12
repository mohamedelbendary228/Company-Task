import 'package:campany_task/widgets/sidebarItems.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SidebarData extends StatelessWidget {
  final Function onTap;
  final AnimationController animationController;
  final bool isOpend;

  SidebarData({this.onTap, this.animationController, this.isOpend});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.lightGreen[900]),
            child: Padding(
              padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Company',
                        style: GoogleFonts.questrial(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: onTap,
                        child: AnimatedIcon(
                          icon: AnimatedIcons.menu_close,
                          progress: animationController.view,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  SidebarItems(
                      svgPic: 'assets/icons/phone.svg',
                      title: '+91 9876543210'),
                  SizedBox(height: 20),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  SizedBox(height: 25),
                  SidebarItems(
                      svgPic: 'assets/icons/wallet.svg', title: 'My Wallet'),
                  SizedBox(height: 20),
                  SidebarItems(
                      svgPic: 'assets/icons/order.svg', title: 'My Orders'),
                  SizedBox(height: 20),
                  SidebarItems(
                      svgPic: 'assets/icons/offer.svg', title: 'Offers'),
                  SizedBox(height: 20),
                  SidebarItems(
                      svgPic: 'assets/icons/refer.svg', title: 'Refer'),
                  SizedBox(height: 20),
                  SidebarItems(
                      svgPic: 'assets/icons/logout.svg', title: 'LogOut'),
                  SizedBox(height: 20),
                  SidebarItems(
                      svgPic: 'assets/icons/about.svg', title: 'About Us'),
                  SizedBox(height: 20),
                  SidebarItems(
                      svgPic: 'assets/icons/rate.svg', title: 'Rate Us'),
                  SizedBox(height: 20),
                  SidebarItems(
                      svgPic: 'assets/icons/share.svg', title: 'Share'),
                  SizedBox(height: 25),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          color: isOpend ? Colors.white.withOpacity(0.6) : null,
        ),
      ],
    );
  }
}
