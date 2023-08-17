import 'package:gym_tracker/app/core/database/repositories/exercises/exercises_repository.dart';
import 'package:gym_tracker/app/core/dtos/create_exercise_dto.dart';
import 'package:realm/realm.dart';

import '../../models/workout_model.dart';

class RealmExercisesRepositoryImpl implements ExercisesRepository {
  RealmExercisesRepositoryImpl(this._realm);

  final Realm _realm;

  @override
  Future<List<Map<String, dynamic>>> findAll() async {
    final exercises = _realm.all<ExerciseModel>();
    return exercises.map((e) => e.toJson()).toList();
  }

  @override
  Future<void> insertOne(CreateExerciseDto newExercise) async {
    _realm.write(() {
      _realm.add(
        ExerciseModel(
            Uuid.v4().toString(), newExercise.title, newExercise.description),
      );
    });
  }
}
