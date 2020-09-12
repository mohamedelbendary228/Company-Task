import 'package:campany_task/providers/items_providers.dart';
import 'package:campany_task/screens/descreption_screen.dart';
import 'package:campany_task/widgets/bottom_nav_bar2.dart';
import 'package:campany_task/widgets/items_screen_widgets/card_item.dart';
import 'package:campany_task/widgets/items_screen_widgets/top_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class ItemsScreen extends StatelessWidget {
  static const routeName = '/items-screen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryImage = routeArgs['image'];
    final items = Provider.of<ItemsProvider>(context).items;
    final categoryItems = items.where((item) {
      return item.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: TopRow(
              image: categoryImage,
              title: categoryTitle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 120,
              left: 20,
              right: 20,
            ),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                padding: const EdgeInsets.only(bottom: 100, top: 10),
                itemCount: categoryItems.length,
                itemBuilder: (ctx, i) {
                  return Transform.translate(
                    offset: Offset(0.0, i.isEven ? 50 : 0.0),
                    child: CardItem(
                      id: categoryItems[i].id,
                      title: categoryItems[i].title,
                      image: categoryItems[i].image,
                      weight: categoryItems[i].weight,
                      price: categoryItems[i].price,
                      svgPicture: categoryItems[i].svgPic,
                      color: categoryItems[i].color,
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                ),
              ),
              // child: StaggeredGridView.countBuilder(
              //   crossAxisCount: 4,
              //   itemCount: categoryItems.length,
              //   itemBuilder: (BuildContext context, int i) => CardItem(
              //     id: categoryItems[i].id,
              //     title: categoryItems[i].title,
              //     image: categoryItems[i].image,
              //     weight: categoryItems[i].weight,
              //     price: categoryItems[i].price,
              //     svgPicture: categoryItems[i].svgPic,
              //     color: categoryItems[i].color,
              //   ),
              //   padding: EdgeInsets.only(bottom: 30),
              //   staggeredTileBuilder: (int index) =>
              //       StaggeredTile.count(2, index.isEven ? 2.8 : 2.8),
              //   mainAxisSpacing: 20,
              //   crossAxisSpacing: 20,
              // ),
            ),
          ),
          BottomNavBar2(),
        ],
      ),
    );
  }
}
