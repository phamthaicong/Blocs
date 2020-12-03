import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class CounterState extends Equatable {
  int counter;
  String name;

  CounterState({@required this.counter,@required this.name});

  @override
  List<Object> get props => [counter,name];

  @override
  String toString() {
    // TODO: implement toString
    return '-------------->$counter';
  }
}
