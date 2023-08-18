// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_exercise_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateExerciseDto _$CreateExerciseDtoFromJson(Map<String, dynamic> json) =>
    CreateExerciseDto(
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$CreateExerciseDtoToJson(CreateExerciseDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
