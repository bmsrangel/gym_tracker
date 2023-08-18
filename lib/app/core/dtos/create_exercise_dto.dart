import 'package:json_annotation/json_annotation.dart';

part 'create_exercise_dto.g.dart';

@JsonSerializable()
class CreateExerciseDto {
  CreateExerciseDto({
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  factory CreateExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateExerciseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreateExerciseDtoToJson(this);
}
