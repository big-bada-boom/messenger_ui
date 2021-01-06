import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.black26,
      height: 140,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 3),
              child: Text(
                'Помощь',
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
                            Icons.messenger_outline,
                            color: Colors.white30,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'Задать вопрос',
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
                            Icons.question_answer,
                            color: Colors.white30,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'Вопросы о приложении',
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
                            Icons.shield,
                            color: Colors.white30,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'Политика конфиденциальности',
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
