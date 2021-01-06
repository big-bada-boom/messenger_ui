import 'package:flutter/material.dart';
import 'package:hello_world/Block/PeoplesInChat_bloc.dart';
import 'RoomButton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Block/RoomButton_bloc.dart';

class RoomsView extends StatefulWidget {
  @override
  _RoomsViewState createState() => _RoomsViewState();
}

class _RoomsViewState extends State<RoomsView> {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    ClickBloc provider = BlocProvider.of<ClickBloc>(context);
    // ignore: close_sinks
    ClickBloc_2 provider_2 = BlocProvider.of<ClickBloc_2>(context);

    refresh() {
      setState(() {});
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        toolbarHeight: 40.0,
        title: Center(
          child: Column(
            children: [
              Text(
                'Chatlist',
                style: TextStyle(fontSize: 18),
              ),
              BlocBuilder<ClickBloc_2, int>(
                builder: (context, count) {
                  return Text(
                    '$count/8 ',
                    style: TextStyle(fontSize: 10),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: Colors.blue[400],
        child: Icon(Icons.add),
        onPressed: () {
          setState(() => provider.add(Click_event.RoomButtonAdd));
          setState(() => provider_2.add(Click_event_2.Add));
        },
      ),
      backgroundColor: Colors.grey[900],
      body: BlocBuilder<ClickBloc, List>(
        builder: (context, count) {
          return ListView.builder(
            itemCount: count.length,
            itemBuilder: (context, int) {
              return Container(
                child: RoomButton(count[int], int, refresh),
              );
            },
          );
        },
      ),
    );
  }
}
