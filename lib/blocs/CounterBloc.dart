import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/CounterEvent.dart';
import '../state/CounterState.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // CounterBloc() : super(CounterState(counter: 0));
  @override
  CounterState get initialState => CounterState(counter: 0,name: "Pham Thai Cong");

  @override
  // ignore: missing_return
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    print('dem $state');
    if (event is IncrementEvent) {
      yield CounterState(counter: state.counter + event.bien,name: event.name);
      print('them-------------->${state.counter}');
    }
    if (event is DecrementEvent) {
      yield CounterState(counter: state.counter - event.no,name: event.name);
      print('trừ--------------->${state.counter}');
    }
  }
}
