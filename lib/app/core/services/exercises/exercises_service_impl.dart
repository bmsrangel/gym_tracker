import 'package:gym_tracker/app/core/database/repositories/exercises/exercises_repository.dart';
import 'package:gym_tracker/app/core/dtos/create_exercise_dto.dart';
import 'package:gym_tracker/app/core/entities/exercise_entity.dart';

import 'exercises_service.dart';

class ExercisesServiceImpl implements ExercisesService {
  ExercisesServiceImpl(this._exercisesRepository);

  final ExercisesRepository _exercisesRepository;

  @override
  Future<List<ExerciseEntity>> getAll() async {
    final exercises = await _exercisesRepository.findAll();
    return exercises.map(ExerciseEntity.fromJson).toList();
  }

  @override
  Future<void> createExercise(CreateExerciseDto newExercise) async {
    await _exercisesRepository.insertOne(newExercise.toJson());
  }

  @override
  Future<void> updateExercise(ExerciseEntity updatedExercise) async {
    await _exercisesRepository.updateOne(
      updatedExercise.toJson(),
    );
  }
}
