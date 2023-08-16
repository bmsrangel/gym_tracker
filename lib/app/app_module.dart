import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_tracker/app/core/database/config/realm_config.dart';
import 'package:gym_tracker/app/core/repositories/exercises/exercises_repository.dart';
import 'package:gym_tracker/app/core/repositories/exercises/realm_exercises_repository_impl.dart';
import 'package:gym_tracker/app/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addInstance(RealmConfig.openDatabase());
    i.addLazySingleton<ExercisesRepository>(RealmExercisesRepositoryImpl.new);
  }

  @override
  void routes(RouteManager r) {
    r.module(Modular.initialRoute, module: HomeModule());
  }
}
