import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_tracker/app/core/blocs/exercises/exercises_bloc.dart';
import 'package:gym_tracker/app/core/dtos/create_exercise_dto.dart';
import 'package:gym_tracker/app/core/entities/exercise_entity.dart';

class ExercisesPage extends StatefulWidget {
  const ExercisesPage({super.key});

  @override
  State<ExercisesPage> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  late final ExercisesBloc _exercisesBloc;

  @override
  void initState() {
    super.initState();
    _exercisesBloc = Modular.get<ExercisesBloc>();
    _exercisesBloc.add(const FetchExercisesEvent());
  }

  @override
  void dispose() {
    super.dispose();
    _exercisesBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercícios'),
      ),
      body: Center(
        child: BlocBuilder<ExercisesBloc, ExercisesState>(
          bloc: _exercisesBloc,
          builder: (context, state) => switch (state) {
            LoadingExercisesState() => const CircularProgressIndicator(),
            SuccessExercisesState(exercises: final exercises) =>
              exercises.isEmpty
                  ? const Text('Nenhum exercício cadastrado')
                  : ListView.builder(
                      itemCount: exercises.length,
                      itemBuilder: (_, index) => ListTile(
                        title: Text(exercises[index].title),
                        subtitle: Text(exercises[index].description),
                        onTap: () async {
                          final ExerciseEntity? updatedExercise =
                              await Modular.to.pushNamed(
                            'exercise',
                            arguments: exercises[index],
                          );
                          if (updatedExercise != null) {
                            _exercisesBloc
                                .add(UpdateExerciseEvent(updatedExercise));
                            _exercisesBloc.add(const FetchExercisesEvent());
                          }
                        },
                      ),
                    ),
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final CreateExerciseDto? newExercise =
              await Modular.to.pushNamed('exercise');
          if (newExercise != null) {
            _exercisesBloc.add(AddExerciseEvent(newExercise));
            _exercisesBloc.add(const FetchExercisesEvent());
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
