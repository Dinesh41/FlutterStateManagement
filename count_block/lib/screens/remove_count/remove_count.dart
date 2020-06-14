import 'package:countblock/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoveCount extends StatefulWidget {
  @override
  _RemoveCountState createState() => _RemoveCountState();
}

class _RemoveCountState extends State<RemoveCount> {
  @override
  Widget build(BuildContext context) {
    final AppBloc counterBloc = BlocProvider.of<AppBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Remove"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<AppBloc, int>(
                builder: (context, count) {
                  return Text(
                    '${count}',
                    style: TextStyle(fontSize: 50),
                  );
                },
              ),
              RaisedButton(
                child: Text('-'),
                onPressed: () {
                  counterBloc.add(BlocEvent.decrement);
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
