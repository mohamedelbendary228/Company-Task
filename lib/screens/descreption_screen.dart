import 'package:campany_task/providers/items_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class DescreptionScreen extends StatefulWidget {
  static const routeName = '/desc-screen';

  @override
  _DescreptionScreenState createState() => _DescreptionScreenState();
}

class _DescreptionScreenState extends State<DescreptionScreen> {

  bool _isBookmarkSelected = false;
  bool _isShoppingCartSelected = false;
  @override
  Widget build(BuildContext context) {
    final itemId = ModalRoute.of(context).settings.arguments as String;
    final itemProvider = Provider.of<ItemsProvider>(context).items;
    final itemsData = itemProvider.firstWhere((item) => item.id == itemId);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(
                color: Colors.lightGreen[500],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                )),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 10),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.chevron_left,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        alignment: Alignment.center,
                        child: Text(
                          itemsData.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Image.asset(
                  itemsData.image,
                  fit: BoxFit.cover,
                  width: 160,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      itemsData.weight,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          itemsData.svgPic,
                          width: 20,
                        ),
                        Text(
                          itemsData.price,
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.add_shopping_cart),
                      iconSize: 30,
                      color: _isShoppingCartSelected? Colors.grey[700] : Colors.grey,
                      onPressed: (){
                        setState(() {
                          _isShoppingCartSelected = !_isShoppingCartSelected;
                        });
                      },
                    ),
                    SizedBox(height: 5),
                    IconButton(
                      icon: Icon(Icons.bookmark),
                      iconSize: 30,
                      color: _isBookmarkSelected? Colors.grey[700] : Colors.grey,
                      onPressed: (){
                        setState(() {
                          _isBookmarkSelected = !_isBookmarkSelected;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Manufacturing Deatails',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
