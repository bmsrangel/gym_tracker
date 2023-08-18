import 'package:gym_tracker/app/core/database/models/workout_model.dart';
import 'package:gym_tracker/app/core/database/repositories/workouts/workouts_repository.dart';
import 'package:realm/realm.dart';

class RealmWorkoutsRepositoryImpl implements WorkoutsRepository {
  RealmWorkoutsRepositoryImpl(this._realm);

  final Realm _realm;

  @override
  Future<List<Map<String, dynamic>>> findAll() async {
    final results = _realm.all<WorkoutModel>();
    return results.map((workout) => workout.toJson()).toList();
  }

  @override
  Future<void> insertOne(Map<String, dynamic> newRegister) async {
    _realm.write(() {
      _realm.add(
        WorkoutModel(
          Uuid.v4().toString(),
          DateTime.now(),
          activities: (newRegister['activities'] as List).map(
              (activityEntity) =>
                  _realm.find(Uuid.fromString(activityEntity['id']))!),
        ),
      );
    });
  }

  @override
  Future<void> updateOne(Map<String, dynamic> updatedRegister) {
    // TODO: implement updateOne
    throw UnimplementedError();
  }
}
