import 'package:gym_tracker/app/core/database/models/workout_model.dart';
import 'package:gym_tracker/app/core/dtos/create_activity_dto.dart';
import 'package:gym_tracker/app/core/repositories/activities/activities_repository.dart';
import 'package:realm/realm.dart';

class RealmActivitiesRepositoryImpl implements ActivitiesRepository {
  RealmActivitiesRepositoryImpl(this._realm);

  final Realm _realm;

  @override
  Future<List<ActivityModel>> findAll() async {
    final results = _realm.all<ActivityModel>();
    return results.map((activity) => activity.freeze()).toList();
  }

  @override
  Future<void> insertOne(CreateActivityDto newRegister) async {
    _realm.write(() {
      _realm.add(
        ActivityModel(
          Uuid.v4(),
          exercise: _realm.find(Uuid.fromString(newRegister.exerciseId)),
          durationInSeconds: newRegister.duration?.inSeconds,
          repetitions: newRegister.repetitions,
          series: newRegister.series,
        ),
      );
    });
  }
}
