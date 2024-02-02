import 'package:injecatble_example/domain/counter/counter_repository.dart';
import 'package:injectable/injectable.dart';

// Dodajmy as: CounterRepository, aby wskazać, że CounterRepositoryImpl implementuje CounterRepository,
// dzięki czemu w use case uzywamy CounterRepository, a nie CounterRepositoryImpl.
@Singleton(as: CounterRepository)
class CounterRepositoryImpl implements CounterRepository {
  int _counter = 0;

  @override
  int decrement() => _counter--;

  @override
  int increment() => _counter++;
}
