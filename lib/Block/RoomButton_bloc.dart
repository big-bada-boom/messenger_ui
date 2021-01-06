import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/models.dart';
import 'dart:math';

enum Click_event {
  RoomButtonAdd,
}
List chats = [];

class ClickBloc extends Bloc<dynamic, List> {
  ClickBloc() : super([]);

  @override
  Stream<List> mapEventToState(dynamic event) async* {
    if (event == Click_event.RoomButtonAdd) {
      while (true) {
        Random random = Random();
        var user = peoples[random.nextInt(peoples.length)];
        if (chats.contains(user) == false) {
          chats.add(user);
          break;
        }
        if (chats.length >= 8) {
          break;
        }
      }
    } else if (chats.contains(event) == false) {
      chats.removeAt(event);
    }
    yield chats;
  }
}
