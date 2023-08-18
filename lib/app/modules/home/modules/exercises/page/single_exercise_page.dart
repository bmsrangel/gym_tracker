import 'package:flutter/material.dart';
import 'package:gym_tracker/app/core/dtos/create_exercise_dto.dart';
import 'package:gym_tracker/app/core/entities/exercise_entity.dart';
import 'package:validatorless/validatorless.dart';

class SingleExercisePage extends StatefulWidget {
  const SingleExercisePage({super.key, this.selectedExercise});

  final ExerciseEntity? selectedExercise;

  @override
  State<SingleExercisePage> createState() => _SingleExercisePageState();
}

class _SingleExercisePageState extends State<SingleExercisePage> {
  late final TextEditingController _title$;
  late final TextEditingController _description$;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _title$ = TextEditingController(
      text: widget.selectedExercise?.title,
    );
    _description$ = TextEditingController(
      text: widget.selectedExercise?.description,
    );
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
    _title$.dispose();
    _description$.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.selectedExercise != null
              ? widget.selectedExercise!.title
              : 'Novo exercício',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextFormField(
                  controller: _title$,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome do exercício',
                  ),
                  validator: Validatorless.required('Campo obrigatório'),
                  textCapitalization: TextCapitalization.words,
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _description$,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Descrição do exercício',
                  ),
                  validator: Validatorless.required('Campo obrigatório'),
                  textCapitalization: TextCapitalization.sentences,
                  minLines: 1,
                  maxLines: 3,
                ),
                const SizedBox(height: 64.0),
                ElevatedButton.icon(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (widget.selectedExercise == null) {
                        final title = _title$.text;
                        final description = _description$.text;
                        final newExercise = CreateExerciseDto(
                          title: title,
                          description: description,
                        );
                        Navigator.pop(context, newExercise);
                      } else {
                        final updatedExercise =
                            widget.selectedExercise!.copyWith(
                          title: _title$.text,
                          description: _description$.text,
                        );
                        Navigator.pop(context, updatedExercise);
                      }
                    }
                  },
                  icon: const Icon(Icons.save),
                  label: const Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
