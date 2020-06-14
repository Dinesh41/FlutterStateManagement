import 'package:countprovider/providers/count_provider.dart';
import 'package:countprovider/screens/add_count/add_count.dart';
import 'package:countprovider/screens/remove_count/remove_count.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CountProvider>(
      create: (context) => CountProvider(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: "Count",
            initialRoute: '/add_count',
            routes: {
              '/add_count': (context) => AddCount(),
              '/remove_count': (context) => RemoveCount()
            },
          );
        },
      ),
    );
  }
}
