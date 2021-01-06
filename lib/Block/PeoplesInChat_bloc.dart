import 'package:flutter_bloc/flutter_bloc.dart';

enum Click_event_2 { Add, Del }

// ignore: camel_case_types
class ClickBloc_2 extends Bloc<Click_event_2, int> {
  int users = 0;
  ClickBloc_2() : super(0);

  @override
  Stream<int> mapEventToState(Click_event_2 event) async* {
    if (event == Click_event_2.Add) {
      if (users < 8) {
        users++;
        yield users;
      }
    } else if (event == Click_event_2.Del) {
      if (users > 0) {
        users--;
        yield users;
      }
    }
  }
}
