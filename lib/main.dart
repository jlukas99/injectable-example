import 'package:flutter/material.dart';
import 'package:injecatble_example/core/di.dart';
import 'package:injecatble_example/presenstion/app.dart';

void main() {
  // Musimy wywołać tę funkcję przed odpaleniem aplikacji, aby zainicjować nasze zależności
  configureDependencies();

  runApp(const App());
}
