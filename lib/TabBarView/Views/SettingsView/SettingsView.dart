import 'package:flutter/material.dart';

import 'MiddleWidget.dart';
import 'TopWidget.dart';
import 'BottomWidget.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 85,
              pinned: true,
              expandedHeight: 110,
              backgroundColor: Colors.grey[900],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  height: 65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('android/assets/2.jpg'),
                        radius: 30,
                      ),
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Станислав Ксенофонтов',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 2),
                                child: Text(
                                  'в сети',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    color: Colors.black26,
                    height: 40,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.blue[400],
                          ),
                        ),
                        Text(
                          'Выбрать фотографию',
                          style: TextStyle(
                            color: Colors.blue[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Top(),
                  Middle(),
                  Bottom(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
