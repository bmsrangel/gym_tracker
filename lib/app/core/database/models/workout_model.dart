import 'package:json_annotation/json_annotation.dart';
import 'package:realm/realm.dart';

part 'activity_model.dart';
part 'exercise_model.dart';
part 'workout_model.g.dart';

@RealmModel()
@JsonSerializable()
class _WorkoutModel {
  @PrimaryKey()
  late String id;
  late DateTime date;
  late List<_ActivityModel> activities;

  static _WorkoutModel fromJson(Map<String, dynamic> json) =>
      _$WorkoutModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutModelToJson(this);
}
