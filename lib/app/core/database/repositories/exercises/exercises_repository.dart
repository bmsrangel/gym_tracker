import 'package:gym_tracker/app/core/database/repositories/base_repository.dart';
import 'package:gym_tracker/app/core/dtos/create_exercise_dto.dart';

abstract interface class ExercisesRepository
    implements BaseRepository<CreateExerciseDto> {}
