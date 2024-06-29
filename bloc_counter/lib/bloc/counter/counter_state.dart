import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;
  const CounterState({this.counter = 0});

  CounterState copyWith(int? countr) =>
      CounterState(counter: countr ?? counter);

  @override
  List<Object> get props => [counter];
}
