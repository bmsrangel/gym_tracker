part of 'workout_model.dart';

@RealmModel()
@JsonSerializable()
class _ExerciseModel {
  @PrimaryKey()
  late String id;
  late String title;
  late String description;

  static _ExerciseModel fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseModelToJson(this);
}
