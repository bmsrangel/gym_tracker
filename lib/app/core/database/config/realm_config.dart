import 'package:gym_tracker/app/core/database/models/exercise_model.dart';
import 'package:realm/realm.dart';

class RealmConfig {
  static Realm openDatabase() {
    final config = Configuration.local([
      ExerciseModel.schema,
    ]);
    return Realm(config);
  }
}
