part of 'exercises_bloc.dart';

abstract interface class ExercisesEvent {
  const ExercisesEvent();
}

class FetchExercisesEvent implements ExercisesEvent {
  const FetchExercisesEvent();
}

class AddExerciseEvent implements ExercisesEvent {
  const AddExerciseEvent(this.newExercise);

  final CreateExerciseDto newExercise;
}
