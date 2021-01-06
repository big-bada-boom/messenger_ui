import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/Block/PeoplesInChat_bloc.dart';
import 'ChatView/ChatView.dart';
import '../../../Block/RoomButton_bloc.dart';

// ignore: must_be_immutable
class RoomButton extends StatefulWidget {
  var state;
  int integer;
  var item;
  RoomButton(this.item, this.integer, this.state);

  @override
  _RoomButtonState createState() => _RoomButtonState();
}

class _RoomButtonState extends State<RoomButton> {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    ClickBloc provider3 = BlocProvider.of<ClickBloc>(context);
    // ignore: close_sinks
    ClickBloc_2 provider_4 = BlocProvider.of<ClickBloc_2>(context);

    return TextButton(
      style: ButtonStyle(),
      onLongPress: () {},
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return ChatView(widget.item);
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        alignment: Alignment.center,
        width: double.maxFinite,
        height: 80,
        child: Row(children: [
          Container(
            width: 60,
            margin: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundImage: AssetImage(widget.item['img']),
              radius: 50,
            ),
          ),
          Container(
            width: 250,
            height: 80,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: BlocBuilder<ClickBloc, List>(
              builder: (context, count) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.item['name'],
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                widget.item['online'],
                                textAlign: TextAlign.end,
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              Container(
                                child: IconButton(
                                  iconSize: 20,
                                  color: Colors.blue[400],
                                  splashColor: Colors.black,
                                  splashRadius: 20,
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    provider3.add(widget.integer);
                                    provider_4.add(Click_event_2.Del);
                                    widget.state();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 35,
                      child: Text(
                        widget.item['messages'].last.values.last,
                        style: TextStyle(color: Colors.white38),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
