import '../bloc/counter/counter_bloc.dart';
import '../bloc/counter/counter_events.dart';
import '../bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) => Text(
              state.counter.toString(),
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  context.read<CounterBloc>().add(IncrementCounter());
                },
                style: IconButton.styleFrom(
                  backgroundColor: const Color.fromARGB(44, 218, 91, 240),
                ),
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  context.read<CounterBloc>().add(DecrementCounter());
                },
                style: IconButton.styleFrom(
                  backgroundColor: const Color.fromARGB(44, 218, 91, 240),
                ),
                icon: const Icon(Icons.minimize),
              ),
            ],
          )
        ],
      ),
    );
  }
}
