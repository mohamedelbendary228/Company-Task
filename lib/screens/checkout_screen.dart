import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutScreen extends StatelessWidget {
  Widget _buildText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  'Checkout',
                  style: GoogleFonts.questrial(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.17,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.grey[400],
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'HOME',
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        _buildText('17/153'),
                        _buildText('Indria Nagar'),
                        _buildText('Luchnow'),
                        _buildText('226016'),
                      ],
                    ),
                    Container(
                      height: 30,
                      child: FlatButton(
                        onPressed: () {
                          // ....
                        },
                        color: Color(0xFF1B5E20).withOpacity(0.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Change',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF1B5E20).withOpacity(0.7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Add Address',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF1B5E20).withOpacity(0.9),
            ),
            child: Text(
              'Proceed',
              style: GoogleFonts.questrial(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
