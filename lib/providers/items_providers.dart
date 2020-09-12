import 'package:campany_task/models/items.dart';
import 'package:flutter/material.dart';

class ItemsProvider with ChangeNotifier {
  List<Items> _items = [
    Items(
      id: 't1',
      categories: [
        'c1',
      ],
      title: 'Dove',
      image: 'assets/images/dove.png',
      price: '250',
      weight: '1L',
      svgPic: 'assets/icons/currency.svg',
      color: Colors.cyan[200],
    ),
    Items(
      id: 't2',
      categories: [
        'c1',
      ],
      title: 'TRESEMME',
      image: 'assets/images/tre.jpg',
      price: '350',
      weight: '2L',
      svgPic: 'assets/icons/currency.svg',
      color: Colors.pink[700],
    ),
    Items(
      id: 't3',
      categories: [
        'c1',
      ],
      title: 'HEAD & SHOULDERS',
      image: 'assets/images/head.png',
      price: '450',
      weight: '1L',
      svgPic: 'assets/icons/currency.svg',
      color: Colors.lightGreen,
    ),
    Items(
      id: 't4',
      categories: [
        'c1',
      ],
      title: 'LOREALL PARIS',
      image: 'assets/images/lor.png',
      price: '300',
      weight: '1L',
      svgPic: 'assets/icons/currency.svg',
      color: Colors.red[700],
    ),
    Items(
      id: 't5',
      categories: [
        'c1',
      ],
      title: 'SEAD',
      image: 'assets/images/seda.png',
      price: '600',
      weight: '280ML',
      svgPic: 'assets/icons/currency.svg',
      color: Colors.pink[600],
    ),
    Items(
      id: 't6',
      categories: [
        'c1',
      ],
      title: 'FERTERER',
      image: 'assets/images/ferterer.png',
      price: '200',
      weight: '1.5L',
      svgPic: 'assets/icons/currency.svg',
      color: Colors.green[900],
    ),
    Items(
      id: 't7',
      categories: [
        'c1',
      ],
      title: 'SUAVE',
      image: 'assets/images/suave.png',
      price: '200',
      weight: '1L',
      svgPic: 'assets/icons/currency.svg',
      color: Colors.purple[300]
    ),
     Items(
      id: 't8',
      categories: [
        'c1',
      ],
      title: 'ELVIVE',
      image: 'assets/images/el.jpg',
      price: '300',
      weight: '1L',
      svgPic: 'assets/icons/currency.svg',
      color: Colors.yellow[900]
    ),
  ];

  List<Items> get items {
    return [... _items];
  }

  void addItems() {
    notifyListeners();
  }
}