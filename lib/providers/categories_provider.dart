import 'package:campany_task/models/categories.dart';
import 'package:flutter/cupertino.dart';

class CategoriesProvider with ChangeNotifier {
  List<Categories> _categories = [
    Categories(
      id: 'c1',
      title: 'Shampoo',
      imageAssets: 'assets/images/elvive.jpg',
    ),
    Categories(
      id: 'c2',
      title: 'Oil',
      imageAssets: 'assets/images/oil.jpg',
    ),
    Categories(
      id: 'c3',
      title: 'Biscuits',
      imageAssets: 'assets/images/biscuits.jpg',
    ),
    Categories(
      id: 'c4',
      title: 'Meats',
      imageAssets: 'assets/images/meat.png',
    ),
    Categories(
      id: 'c5',
      title: 'Cakes',
      imageAssets: 'assets/images/cakes.jpg',
    ),
  ];

  List<Categories> get categories {
    return [..._categories];
  }

  void addCategory() {
    notifyListeners();
  }
}
