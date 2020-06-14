import 'package:countmobx/mobx/counter.dart';
import 'package:countmobx/screens/add_count/add_count.dart';
import 'package:countmobx/screens/remove_count/remove_count.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<Counter>(
      create: (_) => Counter(),
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
