import 'package:flutter/material.dart';

const Map colorMap = {
  1: Colors.yellow,
  2: Colors.amber,
  3: Colors.blue,
  4: Colors.brown,
  5: Colors.cyan,
  6: Colors.orange,
  7: Colors.purple,
  8: Colors.green,
  9: Colors.indigo,
};

class MyTabBar extends StatefulWidget {
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State {
  int keyToColorMap = 1;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: Colors.grey[700],
      onTap: (int) {
        setState(
          () {
            if (keyToColorMap < 9) {
              keyToColorMap++;
            } else {
              keyToColorMap = 1;
            }
          },
        );
      },
      indicatorColor: colorMap[keyToColorMap],
      tabs: [
        Tab(
          text: 'Chat',
        ),
        Tab(
          text: 'Friends',
        ),
        Tab(
          text: 'Settings',
        )
      ],
    );
  }
}
