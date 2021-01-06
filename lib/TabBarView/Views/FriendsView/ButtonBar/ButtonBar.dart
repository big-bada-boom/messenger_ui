import 'package:flutter/material.dart';

class ButtonsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: [
        FlatButton(
          onPressed: () {},
          child: Container(
            child: Row(
              children: [
                Icon(
                  Icons.person_add_sharp,
                  color: Colors.grey[500],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Пригласить друзей',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Container(
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey[500],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Найти людей рядом',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
