import 'package:equatable/equatable.dart';
import 'package:gym_tracker/app/core/entities/activity_entity.dart';

class WorkoutEntity extends Equatable {
  const WorkoutEntity({
    required this.id,
    required this.date,
    required this.activities,
  });

  final String id;
  final DateTime date;
  final List<ActivityEntity> activities;

  @override
  List<Object?> get props => [
        id,
        date,
        activities,
      ];
}
