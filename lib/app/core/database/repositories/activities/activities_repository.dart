import 'package:gym_tracker/app/core/database/repositories/base_repository.dart';
import 'package:gym_tracker/app/core/dtos/create_activity_dto.dart';

abstract interface class ActivitiesRepository
    implements BaseRepository<CreateActivityDto> {}
