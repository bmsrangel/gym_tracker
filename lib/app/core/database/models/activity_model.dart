part of 'workout_model.dart';

@RealmModel()
class _ActivityModel {
  @PrimaryKey()
  late Uuid id;
  late _ExerciseModel? exercise;
  late int? repetitions;
  late int? series;
  @MapTo('duration')
  late int? durationInSeconds;
}
