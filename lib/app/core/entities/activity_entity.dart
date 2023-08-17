import 'package:equatable/equatable.dart';
import 'package:gym_tracker/app/core/entities/exercise_entity.dart';

class ActivityEntity extends Equatable {
  const ActivityEntity({
    required this.id,
    required this.exercise,
    this.repetitions,
    this.series,
    this.duration,
  });

  final String id;
  final ExerciseEntity exercise;
  final int? repetitions;
  final int? series;
  final Duration? duration;

  @override
  List<Object?> get props => [
        id,
        exercise,
        repetitions,
        series,
        duration,
      ];
}
