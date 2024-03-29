import 'package:realm/realm.dart';

import '../models/workout_model.dart';

class RealmConfig {
  static Realm openDatabase() {
    final config = Configuration.local(
      [
        ExerciseModel.schema,
        ActivityModel.schema,
        WorkoutModel.schema,
      ],
      schemaVersion: 0,
    );
    return Realm(config);
  }
}
