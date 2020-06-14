import 'package:countmobx/mobx/counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class AddCount extends StatefulWidget {
  @override
  _AddCountState createState() => _AddCountState();
}

class _AddCountState extends State<AddCount> {
  @override
  Widget build(BuildContext context) {
    Counter counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Add"),
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
                child: Text('+'),
                onPressed: () {
                  counter.increment();
                },
              ),
              RaisedButton(
                child: Text('Next Page'),
                onPressed: () {
                  Navigator.pushNamed(context, '/remove_count');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
