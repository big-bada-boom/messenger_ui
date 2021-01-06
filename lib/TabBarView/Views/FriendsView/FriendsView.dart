import 'package:flutter/material.dart';
import 'package:hello_world/models.dart';
import 'ButtonBar/ButtonBar.dart';

class FriendsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        toolbarHeight: 40.0,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Contacts',
                style: TextStyle(fontSize: 18),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          ButtonsBar(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
            height: 20,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Text(
              'Список пользователей',
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 13,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 230,
            child: ListView.builder(
              itemCount: peoples.length,
              itemBuilder: (context, int) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.all(2),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(peoples[int]['img']),
                          radius: 50,
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              peoples[int]['name'],
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'был(а) в ' + peoples[int]['online'],
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
