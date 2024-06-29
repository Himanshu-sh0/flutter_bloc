import "package:equatable/equatable.dart";

sealed class CounterEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent{}