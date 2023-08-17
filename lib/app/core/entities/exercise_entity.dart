import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exercise_entity.g.dart';

@JsonSerializable()
class ExerciseEntity extends Equatable {
  const ExerciseEntity({
    required this.id,
    required this.title,
    required this.description,
  });

  final String id;
  final String title;
  final String description;

  factory ExerciseEntity.fromJson(Map<String, dynamic> json) =>
      _$ExerciseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseEntityToJson(this);

  @override
  List<Object?> get props => [
        id,
        title,
        description,
      ];
}
