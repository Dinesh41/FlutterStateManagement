import 'package:countblock/bloc/app_bloc.dart';
import 'package:countblock/screens/add_count/add_count.dart';
import 'package:countblock/screens/remove_count/remove_count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      create: (context) => AppBloc(),
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
