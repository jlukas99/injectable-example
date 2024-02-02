import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:injecatble_example/presenstion/counter/cubit/counter_cubit.dart';

class CounterPage extends HookWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<CounterCubit>();
    final state = useBlocBuilder(cubit);

    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () => cubit.increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () => cubit.decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: Text('$state'),
      ),
    );
  }
}
