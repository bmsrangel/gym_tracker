import 'package:gym_tracker/app/core/database/repositories/base_repository.dart';
import 'package:gym_tracker/app/core/dtos/create_workout_dto.dart';

abstract interface class WorkoutsRepository
    implements BaseRepository<CreateWorkoutDto> {}
