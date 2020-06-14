import 'package:countblock/bloc/app_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCount extends StatefulWidget {
  @override
  _AddCountState createState() => _AddCountState();
}

class _AddCountState extends State<AddCount> {
  @override
  Widget build(BuildContext context) {
    final AppBloc counterBloc = BlocProvider.of<AppBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Add"),
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
                child: Text('+'),
                onPressed: () {
                  counterBloc.add(BlocEvent.increment);
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
