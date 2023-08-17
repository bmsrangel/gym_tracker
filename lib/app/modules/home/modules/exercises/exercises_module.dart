import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_tracker/app/core/blocs/exercises/exercises_bloc.dart';
import 'package:gym_tracker/app/core/services/exercises/exercises_service.dart';
import 'package:gym_tracker/app/core/services/exercises/exercises_service_impl.dart';
import 'package:gym_tracker/app/modules/home/modules/exercises/exercises_page.dart';

import '../../../../core/database/repositories/exercises/exercises_repository.dart';
import '../../../../core/database/repositories/exercises/realm_exercises_repository_impl.dart';

class ExercisesModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton<ExercisesRepository>(RealmExercisesRepositoryImpl.new);
    i.addLazySingleton<ExercisesService>(ExercisesServiceImpl.new);
    i.addLazySingleton(ExercisesBloc.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (_) => const ExercisesPage(),
      transition: TransitionType.fadeIn,
    );
  }
}
