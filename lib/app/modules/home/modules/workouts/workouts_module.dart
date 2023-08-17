import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_tracker/app/modules/home/modules/workouts/workouts_page.dart';

class WorkoutsModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (_) => const WorkoutsPage(),
      transition: TransitionType.fadeIn,
    );
  }
}
