import 'package:gym_tracker/app/core/entities/activity_entity.dart';

class CreateWorkoutDto {
  CreateWorkoutDto({
    required this.activities,
  });

  final List<ActivityEntity> activities;
}
