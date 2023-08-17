class CreateActivityDto {
  CreateActivityDto({
    required this.exerciseId,
    this.repetitions,
    this.series,
    this.duration,
  }) : assert(
          (repetitions != null && series != null && duration == null) ||
              (repetitions == null && series == null && duration != null),
          'Either combine repetitions and series, no duration or duration and no repetitions and series',
        );

  final String exerciseId;
  final int? repetitions;
  final int? series;
  final Duration? duration;
}
