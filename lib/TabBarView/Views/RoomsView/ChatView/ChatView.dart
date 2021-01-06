import 'package:flutter/material.dart';
import 'package:hello_world/TabBarView/Views/RoomsView/ChatView/MessageToMe.dart';
import 'package:hello_world/TabBarView/Views/RoomsView/ChatView/MyMessage.dart';

// ignore: must_be_immutable
class ChatView extends StatelessWidget {
  var item;
  ChatView(this.item);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        highlightColor: Colors.grey[900],
        splashColor: Colors.grey[900],
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black26,
            toolbarHeight: 40.0,
            title: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                ),
                Container(
                  width: 120,
                  margin: EdgeInsets.only(left: 70),
                  child: Column(
                    children: [
                      Text(
                        '${item['name']}',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'was in online at ${item['online']}',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: ListView.builder(
            itemCount: item['messages'].length,
            padding: EdgeInsets.symmetric(vertical: 10),
            itemBuilder: (context, int) {
              var chat = item['messages'];
              var img = item['img'];
              if (chat[int].keys.elementAt(0) == '0') {
                return MessageToMe(img, chat[int].values.elementAt(0));
              } else {
                return MyMessage(chat[int].values.elementAt(0));
              }
              // return Text(chat[int].toString());
            },
          ),
          backgroundColor: Colors.grey[900],
        ),
      ),
    );
  }
}
