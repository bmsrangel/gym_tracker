import 'package:realm/realm.dart';

part 'activity_model.dart';
part 'exercise_model.dart';
part 'workout_model.g.dart';

@RealmModel()
class _WorkoutModel {
  @PrimaryKey()
  late Uuid id;
  late DateTime date;
  late List<_ActivityModel> activities;
}
