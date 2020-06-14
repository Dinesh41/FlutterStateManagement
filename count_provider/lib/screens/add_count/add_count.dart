import 'package:countprovider/providers/count_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddCount extends StatefulWidget {
  @override
  _AddCountState createState() => _AddCountState();
}

class _AddCountState extends State<AddCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Add"),
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
                    child: Text('+'),
                    onPressed: () {
                      provider.addCount();
                    },
                  ),
                  RaisedButton(
                    child: Text('Next Page'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/remove_count');
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
