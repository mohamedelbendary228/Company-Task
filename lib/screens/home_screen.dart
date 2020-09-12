import 'dart:async';

import 'package:campany_task/providers/categories_provider.dart';
import 'package:campany_task/widgets/bottom_navigation_bar.dart';
import 'package:campany_task/widgets/home_screen_widgets/build_row.dart';
import 'package:campany_task/widgets/home_screen_widgets/categories_list.dart';
import 'package:campany_task/widgets/home_screen_widgets/home_app_bar.dart';
import 'package:campany_task/widgets/home_screen_widgets/previous_orders_list.dart';
import 'package:campany_task/widgets/home_screen_widgets/sales_card.dart';
import 'package:campany_task/widgets/home_screen_widgets/sales_card2.dart';
import 'package:campany_task/widgets/sidebar_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  StreamController<bool> _isSidebarOpenStreamController;
  Stream<bool> _isSidebarOpenStream;
  StreamSink<bool> _isSidebarOpenSink;
  AnimationController _animationController;
  //final bool _isSidebarOpend = false;
  final _animationDuration = Duration(milliseconds: 130);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: _animationDuration,
    );
    _isSidebarOpenStreamController = PublishSubject<bool>();
    _isSidebarOpenStream = _isSidebarOpenStreamController.stream;
    _isSidebarOpenSink = _isSidebarOpenStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    _isSidebarOpenStreamController.close();
    _isSidebarOpenSink.close();
    super.dispose();
  }

  void _onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;
    if (isAnimationCompleted) {
      _isSidebarOpenSink.add(false);
      _animationController.reverse();
    } else {
      _isSidebarOpenSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final categoriesData =
        Provider.of<CategoriesProvider>(context, listen: false).categories;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: deviceSize.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: ListView(
                children: <Widget>[
                  HomeAppBar(
                    onPressed: _onIconPressed,
                  ),
                  SizedBox(height: 15),
                  BuildRow(text: 'Discover'),
                  SizedBox(height: 5),
                  Container(
                    width: double.infinity,
                    height: deviceSize.height * 0.14,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoriesData.length,
                      itemBuilder: (ctx, i) => CategoriesList(
                        id: categoriesData[i].id,
                        title: categoriesData[i].title,
                        image: categoriesData[i].imageAssets,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  SalesCard(),
                  SizedBox(height: 15),
                  BuildRow(text: 'Your previous orders'),
                  SizedBox(height: 15),
                  PreviousOrdersList(),
                  SizedBox(height: 15),
                  SalesCard2(),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
          ),
          StreamBuilder<bool>(
            initialData: false,
            stream: _isSidebarOpenStream,
            builder: (context, isSidebarOpendAysnc) {
              return AnimatedPositioned(
                duration: _animationDuration,
                top: 0,
                bottom: 0,
                left: isSidebarOpendAysnc.data ? 0 : -deviceSize.width,
                right: isSidebarOpendAysnc.data ? 0 : deviceSize.width,
                child: SidebarData(
                  onTap: _onIconPressed,
                  animationController: _animationController,
                  isOpend: isSidebarOpendAysnc.data,
                ),
              );
            },
          ),
          BottomNavBar()
        ],
      ),
    );
  }
}
