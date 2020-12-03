import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class CounterEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class IncrementEvent extends CounterEvent {
  final int bien;
  final String name;

  IncrementEvent({@required this.bien, @required this.name});
}

class DecrementEvent extends CounterEvent {
  final int no;
  final String name;

  DecrementEvent({@required this.no, @required this.name});
}
