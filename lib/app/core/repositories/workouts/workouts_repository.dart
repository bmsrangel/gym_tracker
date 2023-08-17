import 'package:gym_tracker/app/core/database/models/workout_model.dart';
import 'package:gym_tracker/app/core/dtos/create_workout_dto.dart';
import 'package:gym_tracker/app/core/repositories/base_repository.dart';

abstract interface class WorkoutsRepository
    implements BaseRepository<WorkoutModel, CreateWorkoutDto> {}
