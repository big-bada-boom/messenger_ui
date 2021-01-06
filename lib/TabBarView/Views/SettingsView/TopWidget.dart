import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.black26,
      height: 190,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Аккаунт',
                style: TextStyle(
                  color: Colors.blue[400],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.blue[400],
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '+7 (919) 000-00-00 ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            'Нажмите, что бы изменить номер телефона',
                            style:
                                TextStyle(color: Colors.white30, fontSize: 11),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.blue[400],
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Не задано',
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Имя пользователя',
                              style: TextStyle(
                                  color: Colors.white30, fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.blue[400],
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'О себе',
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              'Напиши немного о себе',
                              style: TextStyle(
                                  color: Colors.white30, fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
