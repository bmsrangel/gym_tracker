import 'package:gym_tracker/app/core/database/models/workout_model.dart';
import 'package:gym_tracker/app/core/dtos/create_workout_dto.dart';
import 'package:gym_tracker/app/core/repositories/workouts/workouts_repository.dart';
import 'package:realm/realm.dart';

class RealmWorkoutsRepositoryImpl implements WorkoutsRepository {
  RealmWorkoutsRepositoryImpl(this._realm);

  final Realm _realm;

  @override
  Future<List<WorkoutModel>> findAll() async {
    final results = _realm.all<WorkoutModel>();
    return results.map((workout) => workout.freeze()).toList();
  }

  @override
  Future<void> insertOne(CreateWorkoutDto newRegister) async {
    _realm.write(() {
      _realm.add(
        WorkoutModel(
          Uuid.v4(),
          DateTime.now(),
          activities: newRegister.activities.map((activityEntity) =>
              _realm.find(Uuid.fromString(activityEntity.id))!),
        ),
      );
    });
  }
}
