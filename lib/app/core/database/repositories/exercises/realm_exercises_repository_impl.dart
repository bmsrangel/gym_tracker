import 'package:gym_tracker/app/core/database/repositories/exercises/exercises_repository.dart';
import 'package:realm/realm.dart';

import '../../models/workout_model.dart';

class RealmExercisesRepositoryImpl implements ExercisesRepository {
  RealmExercisesRepositoryImpl(this._realm);

  final Realm _realm;

  @override
  Future<List<Map<String, dynamic>>> findAll() async {
    final exercises =
        _realm.query<ExerciseModel>('TRUEPREDICATE SORT(title ASC)');
    return exercises.map((e) => e.toJson()).toList();
  }

  @override
  Future<void> insertOne(Map<String, dynamic> newExercise) async {
    _realm.write(() {
      _realm.add(
        ExerciseModel(
          Uuid.v4().toString(),
          newExercise['title'],
          newExercise['description'],
        ),
      );
    });
  }

  @override
  Future<void> updateOne(Map<String, dynamic> updatedRegister) async {
    _realm.write(() {
      _realm.add(
        ExerciseModel(
          updatedRegister['id'],
          updatedRegister['title'],
          updatedRegister['description'],
        ),
        update: true,
      );
    });
  }

  @override
  Future<void> deleteOne(String registerId) async {
    final ExerciseModel? exercise = _realm.find<ExerciseModel>(registerId);
    if (exercise != null) {
      _realm.write(() {
        _realm.delete(exercise);
      });
    }
  }
}
