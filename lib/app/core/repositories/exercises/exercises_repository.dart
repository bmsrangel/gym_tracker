import 'package:gym_tracker/app/core/dtos/create_exercise_dto.dart';

import '../../database/models/workout_model.dart';

abstract interface class ExercisesRepository {
  Future<List<ExerciseModel>> findAll();
  Future<void> insertOne(CreateExerciseDto newExercise);
}
