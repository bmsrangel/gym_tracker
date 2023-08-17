import 'package:gym_tracker/app/core/dtos/create_exercise_dto.dart';
import 'package:gym_tracker/app/core/repositories/exercises/exercises_repository.dart';
import 'package:realm/realm.dart';

import '../../database/models/workout_model.dart';

class RealmExercisesRepositoryImpl implements ExercisesRepository {
  RealmExercisesRepositoryImpl(this._realm);

  final Realm _realm;

  @override
  Future<List<ExerciseModel>> findAll() async {
    final exercises = _realm.all<ExerciseModel>();
    return exercises.map((exercise) => exercise.freeze()).toList();
  }

  @override
  Future<void> insertOne(CreateExerciseDto newExercise) async {
    _realm.write(() {
      _realm.add(
        ExerciseModel(Uuid.v4(), newExercise.title, newExercise.description),
      );
    });
  }
}
