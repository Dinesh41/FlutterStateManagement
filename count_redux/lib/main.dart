import 'package:countredux/redux/ReduxReducer.dart';
import 'package:countredux/redux/appstate.dart';
import 'package:countredux/screens/add_count/add_count.dart';
import 'package:countredux/screens/remove_count/remove_count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  //Creating the state Instance
  final _initialState = AppState(count: 1);
  //Creating Store using the state
  final Store<AppState> _store =
      Store<AppState>(reduxReducer, initialState: _initialState);
  runApp(
    MyApp(
      store: _store,
    ),
  );
}

class MyApp extends StatelessWidget {
  //Receiving the store
  final Store<AppState> store;
  MyApp({this.store});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Store Provider to provide data to all the screen
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: "Count",
        initialRoute: '/add_count',
        routes: {
          '/add_count': (context) => AddCount(),
          '/remove_count': (context) => RemoveCount()
        },
      ),
    );
  }
}
