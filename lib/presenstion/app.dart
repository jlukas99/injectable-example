import 'package:flutter/material.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:injecatble_example/core/di.dart';
import 'package:injecatble_example/presenstion/counter/counter_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return HookedBlocConfigProvider(
      injector: () => getIt.get,
      child: const MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}
