part of 'workout_model.dart';

@RealmModel()
@JsonSerializable()
class _ActivityModel {
  @PrimaryKey()
  late String id;
  late _ExerciseModel? exercise;
  late int? repetitions;
  late int? series;
  @MapTo('duration')
  late int? durationInSeconds;

  static _ActivityModel fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityModelToJson(this);
}
