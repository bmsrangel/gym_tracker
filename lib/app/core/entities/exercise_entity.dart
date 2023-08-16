import 'package:equatable/equatable.dart';

class ExerciseEntity extends Equatable {
  const ExerciseEntity({
    required this.id,
    required this.title,
    required this.description,
  });

  final int id;
  final String title;
  final String description;

  @override
  List<Object> get props => [
        id,
        title,
        description,
      ];
}
