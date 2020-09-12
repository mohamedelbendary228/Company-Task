import 'package:campany_task/providers/categories_provider.dart';
import 'package:campany_task/providers/items_providers.dart';
import 'package:campany_task/screens/descreption_screen.dart';
import 'package:campany_task/screens/home_screen.dart';
import 'package:campany_task/screens/items_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => CategoriesProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => ItemsProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Company Task',
        theme: ThemeData(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.grey[300],
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        routes: {
          ItemsScreen.routeName : (ctx) => ItemsScreen(),
          DescreptionScreen.routeName : (ctx) => DescreptionScreen(),
        },
      ),
    );
  }
}
