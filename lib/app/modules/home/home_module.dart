import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_tracker/app/modules/home/home_page.dart';
import 'package:gym_tracker/app/modules/home/modules/exercises/exercises_module.dart';
import 'package:gym_tracker/app/modules/home/modules/workouts/workouts_module.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (_) => const HomePage(),
      children: [
        ModuleRoute('/workouts', module: WorkoutsModule()),
        ModuleRoute('/exercises', module: ExercisesModule()),
      ],
    );
  }
}
