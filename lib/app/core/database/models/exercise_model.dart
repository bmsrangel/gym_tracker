part of 'workout_model.dart';

@RealmModel()
class _ExerciseModel {
  @PrimaryKey()
  late Uuid id;
  late String title;
  late String description;
}
