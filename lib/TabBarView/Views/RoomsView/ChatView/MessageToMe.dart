import 'package:flutter/material.dart';

DateTime now = new DateTime.now();

// ignore: must_be_immutable
class MessageToMe extends StatelessWidget {
  var img;
  var text;
  MessageToMe(this.img, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(right: 100),
      padding: EdgeInsets.all(1),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundImage: AssetImage(img),
                  radius: 50,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 8, right: 5),
                child: Text(
                  '${now.hour}:${now.minute}',
                  style: TextStyle(fontSize: 10.0, color: Colors.white54),
                ),
              ),
            ],
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.teal[700],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
              child: Text(
                text,
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
