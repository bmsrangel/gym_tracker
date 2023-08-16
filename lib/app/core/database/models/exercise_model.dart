import 'package:realm/realm.dart';

part 'exercise_model.g.dart';

@RealmModel()
class _ExerciseModel {
  @PrimaryKey()
  late Uuid id;
  late String title;
  late String description;
}
