import 'package:countredux/redux/ReduxActions.dart';
import 'package:countredux/redux/appstate.dart' as countredux;
import 'package:countredux/redux/appstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

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
                  child: Text('-'),
                  onPressed: () {
                    StoreProvider.of<AppState>(context)
                        .dispatch(ReduxActions.Decrement);
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
        )),
      ),
    );
  }
}
