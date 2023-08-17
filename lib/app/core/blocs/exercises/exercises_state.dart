part of 'exercises_bloc.dart';

sealed class ExercisesState {
  const ExercisesState();
}

class LoadingExercisesState extends ExercisesState {
  const LoadingExercisesState();
}

class SuccessExercisesState extends ExercisesState {
  const SuccessExercisesState({required this.exercises});

  final List<ExerciseEntity> exercises;
}
