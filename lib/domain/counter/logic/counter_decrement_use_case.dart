import 'package:injecatble_example/domain/counter/counter_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CounterDecrementUseCase {
  CounterDecrementUseCase(this._counterRepository);

  final CounterRepository _counterRepository;

  int call() => _counterRepository.decrement();
}
