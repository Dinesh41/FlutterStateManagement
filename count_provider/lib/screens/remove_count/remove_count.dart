import 'package:countprovider/providers/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RemoveCount extends StatefulWidget {
  @override
  _RemoveCountState createState() => _RemoveCountState();
}

class _RemoveCountState extends State<RemoveCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Remove"),
      ),
      body: SafeArea(
        child: Center(
          child: Consumer<CountProvider>(
            builder: (context, provider, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${provider.count}',
                    style: TextStyle(fontSize: 50),
                  ),
                  RaisedButton(
                    child: Text('-'),
                    onPressed: () {
                      provider.removeCount();
                    },
                  ),
                  RaisedButton(
                    child: Text('Previous Page'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
