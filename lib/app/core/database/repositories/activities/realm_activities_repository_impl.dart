import 'package:gym_tracker/app/core/database/models/workout_model.dart';
import 'package:gym_tracker/app/core/database/repositories/activities/activities_repository.dart';
import 'package:realm/realm.dart';

class RealmActivitiesRepositoryImpl implements ActivitiesRepository {
  RealmActivitiesRepositoryImpl(this._realm);

  final Realm _realm;

  @override
  Future<List<Map<String, dynamic>>> findAll() async {
    final results = _realm.all<ActivityModel>();
    return results.map((activity) => activity.toJson()).toList();
  }

  @override
  Future<void> insertOne(Map<String, dynamic> newRegister) async {
    _realm.write(() {
      _realm.add(
        ActivityModel(
          Uuid.v4().toString(),
          exercise: _realm.find(Uuid.fromString(newRegister['exercise']['id'])),
          durationInSeconds: newRegister['duration'],
          repetitions: newRegister['repetitions'],
          series: newRegister['series'],
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
