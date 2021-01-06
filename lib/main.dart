import 'package:flutter/material.dart';
import 'package:hello_world/TabBarView/TabBarView.dart';
import 'TabBarView/TabBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        highlightColor: Colors.grey[900],
        splashColor: Colors.grey[900],
      ),
      title: 'Title',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: Container(
            height: 30,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: MyTabBar(),
          ),
          backgroundColor: Colors.grey[900],
          body: MyTabBarView(),
        ),
      ),
    );
  }
}
