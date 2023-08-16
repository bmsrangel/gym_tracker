import 'package:gym_tracker/app/core/database/models/exercise_model.dart';
import 'package:gym_tracker/app/core/dtos/create_exercise_dto.dart';

abstract interface class ExercisesRepository {
  Future<List<ExerciseModel>> findAll();
  Future<void> insertOne(CreateExerciseDto newExercise);
}
