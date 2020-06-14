import 'package:countredux/redux/ReduxActions.dart';
import 'package:countredux/redux/appstate.dart' as countredux;
import 'package:countredux/redux/appstate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

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
          child: StoreConnector<AppState, AppState>(
            converter: (store) => store.state,
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${state.count}',
                    style: TextStyle(fontSize: 50),
                  ),
                  RaisedButton(
                    child: Text('+'),
                    onPressed: () {
                      StoreProvider.of<AppState>(context)
                          .dispatch(ReduxActions.Increment);
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
