import 'package:flutter/material.dart';

DateTime now = new DateTime.now();

// ignore: must_be_immutable
class MyMessage extends StatelessWidget {
  var text;
  MyMessage(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(left: 100),
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
              child: Text(
                text,
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundImage: AssetImage('android/assets/2.jpg'),
                  radius: 50,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 10, left: 5),
                child: Text(
                  '${now.hour}:${now.minute}',
                  style: TextStyle(fontSize: 10.0, color: Colors.white54),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
