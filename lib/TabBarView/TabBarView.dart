import 'package:flutter/material.dart';
import 'Views/RoomsView/RoomsView.dart';
import 'Views/FriendsView/FriendsView.dart';
import 'Views/SettingsView/SettingsView.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Block/RoomButton_bloc.dart';
import '../Block/PeoplesInChat_bloc.dart';

class MyTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ClickBloc>(
          create: (BuildContext context) => ClickBloc(),
        ),
        BlocProvider<ClickBloc_2>(
          create: (BuildContext context) => ClickBloc_2(),
        ),
      ],
      child: SafeArea(
        child: TabBarView(
          children: [
            RoomsView(),
            FriendsView(),
            SettingsView(),
          ],
        ),
      ),
    );
  }
}
