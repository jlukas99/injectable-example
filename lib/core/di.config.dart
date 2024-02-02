// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injecatble_example/data/counter/counter_repository_impl.dart'
    as _i5;
import 'package:injecatble_example/domain/counter/counter_repository.dart'
    as _i4;
import 'package:injecatble_example/domain/counter/logic/counter_decrement_use_case.dart'
    as _i6;
import 'package:injecatble_example/domain/counter/logic/counter_increment_use_case.dart'
    as _i7;
import 'package:injecatble_example/presenstion/counter/cubit/counter_cubit.dart'
    as _i3;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.CounterCubit>(() => _i3.CounterCubit());
    gh.singleton<_i4.CounterRepository>(_i5.CounterRepositoryImpl());
    gh.factory<_i6.CounterDecrementUseCase>(
        () => _i6.CounterDecrementUseCase(gh<_i4.CounterRepository>()));
    gh.factory<_i7.CounterIncrementUseCase>(
        () => _i7.CounterIncrementUseCase(gh<_i4.CounterRepository>()));
    return this;
  }
}
