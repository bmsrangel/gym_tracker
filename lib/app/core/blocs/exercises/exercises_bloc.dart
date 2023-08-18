import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_tracker/app/core/dtos/create_exercise_dto.dart';
import 'package:gym_tracker/app/core/services/exercises/exercises_service.dart';

import '../../entities/exercise_entity.dart';

part 'exercises_event.dart';
part 'exercises_state.dart';

class ExercisesBloc extends Bloc<ExercisesEvent, ExercisesState> {
  ExercisesBloc(this._exercisesService) : super(const LoadingExercisesState()) {
    on<FetchExercisesEvent>(_onFetchExercisesEvent);
    on<AddExerciseEvent>(_onAddExerciseEvent);
    on<UpdateExerciseEvent>(_onUpdateExerciseEvent);
  }

  final ExercisesService _exercisesService;

  Future<void> _onFetchExercisesEvent(FetchExercisesEvent event, emit) async {
    emit(const LoadingExercisesState());
    final exercises = await _exercisesService.getAll();
    emit(SuccessExercisesState(exercises: exercises));
  }

  Future<void> _onAddExerciseEvent(AddExerciseEvent event, emit) async {
    await _exercisesService.createExercise(event.newExercise);
  }

  Future<void> _onUpdateExerciseEvent(UpdateExerciseEvent event, emit) async {
    await _exercisesService.updateExercise(event.updatedExercise);
  }
}
