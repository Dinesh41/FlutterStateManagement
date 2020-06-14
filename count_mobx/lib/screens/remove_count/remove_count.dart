import 'package:countmobx/mobx/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

final counter = Counter(); // Instantiate the store

class RemoveCount extends StatefulWidget {
  @override
  _RemoveCountState createState() => _RemoveCountState();
}

class _RemoveCountState extends State<RemoveCount> {
  @override
  Widget build(BuildContext context) {
    Counter counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Remove"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(
                builder: (_) => Text(
                  '${counter.value}',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              RaisedButton(
                child: Text('-'),
                onPressed: () {
                  counter.decrement();
                },
              ),
              RaisedButton(
                child: Text('Previous Page'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
