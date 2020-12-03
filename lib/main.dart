import 'package:bloc_flutter/state/CounterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_flutter/blocs/CounterBloc.dart';
import 'package:bloc_flutter/event/CounterEvent.dart';

void main() {
  runApp(AppMain());
}

class AppMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "BLOCS",
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: Test(),
      ),
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = context.bloc<CounterBloc>();
    // TODO: implement build
    return Scaffold(
      body: Container(child: BlocBuilder<CounterBloc, CounterState>(
        // ignore: missing_return
        builder: (context, state) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.white,
                  onPressed: () => {counterBloc.add(IncrementEvent(bien: 10,name: "Cong"))},
                  child: Container(
                    child: Text(
                      'Them',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Text('${state.counter} , ${state.name}'),
                RaisedButton(
                  onPressed: () => {counterBloc.add(DecrementEvent(no: 20,name: 'Thai'))},
                  color: Colors.white,
                  child: Container(
                    child: Text(
                      'Tru',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      )),
    );
  }
}
