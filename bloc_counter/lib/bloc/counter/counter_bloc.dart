import 'package:bloc/bloc.dart';
import 'counter_events.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }
  void _increment(IncrementCounter event, Emitter<CounterState> emit) {
    print("increment ${state.counter}");
    emit(state.copyWith(state.counter + 1));
  }

  void _decrement(DecrementCounter event, Emitter<CounterState> emit) {
    print("dencrement ${state.counter}");
    emit(state.copyWith(state.counter - 1));
  }
}
