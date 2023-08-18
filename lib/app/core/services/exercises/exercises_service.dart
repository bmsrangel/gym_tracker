import 'package:gym_tracker/app/core/dtos/create_exercise_dto.dart';
import 'package:gym_tracker/app/core/entities/exercise_entity.dart';

abstract interface class ExercisesService {
  Future<List<ExerciseEntity>> getAll();
  Future<void> createExercise(CreateExerciseDto newExercise);
  Future<void> updateExercise(ExerciseEntity updatedExercise);
}
