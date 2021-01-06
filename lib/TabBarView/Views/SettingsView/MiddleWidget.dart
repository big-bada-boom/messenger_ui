import 'package:flutter/material.dart';

class Middle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.black26,
      height: 210,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 3),
              child: Text(
                'Настройки',
                style: TextStyle(
                  color: Colors.blue[400],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.blue[400],
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.white30,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'Уведомления',
                              style: TextStyle(color: Colors.white),
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
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_open,
                            color: Colors.white30,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'Конфиденциальность',
                              style: TextStyle(color: Colors.white),
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
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.memory,
                            color: Colors.white30,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'Даные и память',
                              style: TextStyle(color: Colors.white),
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
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.chat,
                            color: Colors.white30,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'Настройки чатов',
                              style: TextStyle(color: Colors.white),
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
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.language,
                            color: Colors.white30,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'Язык',
                              style: TextStyle(color: Colors.white),
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
