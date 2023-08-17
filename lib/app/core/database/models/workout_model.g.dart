// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkoutModel _$WorkoutModelFromJson(Map<String, dynamic> json) =>
    _WorkoutModel()
      ..id = json['id'] as String
      ..date = DateTime.parse(json['date'] as String)
      ..activities = (json['activities'] as List<dynamic>)
          .map((e) => _ActivityModel.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$WorkoutModelToJson(_WorkoutModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'activities': instance.activities,
    };

_ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) =>
    _ActivityModel()
      ..id = json['id'] as String
      ..exercise = json['exercise'] == null
          ? null
          : _ExerciseModel.fromJson(json['exercise'] as Map<String, dynamic>)
      ..repetitions = json['repetitions'] as int?
      ..series = json['series'] as int?
      ..durationInSeconds = json['durationInSeconds'] as int?;

Map<String, dynamic> _$ActivityModelToJson(_ActivityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exercise': instance.exercise,
      'repetitions': instance.repetitions,
      'series': instance.series,
      'durationInSeconds': instance.durationInSeconds,
    };

_ExerciseModel _$ExerciseModelFromJson(Map<String, dynamic> json) =>
    _ExerciseModel()
      ..id = json['id'] as String
      ..title = json['title'] as String
      ..description = json['description'] as String;

Map<String, dynamic> _$ExerciseModelToJson(_ExerciseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class WorkoutModel extends _WorkoutModel
    with RealmEntity, RealmObjectBase, RealmObject {
  WorkoutModel(
    String id,
    DateTime date, {
    Iterable<ActivityModel> activities = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'date', date);
    RealmObjectBase.set<RealmList<ActivityModel>>(
        this, 'activities', RealmList<ActivityModel>(activities));
  }

  WorkoutModel._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  DateTime get date => RealmObjectBase.get<DateTime>(this, 'date') as DateTime;
  @override
  set date(DateTime value) => RealmObjectBase.set(this, 'date', value);

  @override
  RealmList<ActivityModel> get activities =>
      RealmObjectBase.get<ActivityModel>(this, 'activities')
          as RealmList<ActivityModel>;
  @override
  set activities(covariant RealmList<ActivityModel> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<WorkoutModel>> get changes =>
      RealmObjectBase.getChanges<WorkoutModel>(this);

  @override
  WorkoutModel freeze() => RealmObjectBase.freezeObject<WorkoutModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(WorkoutModel._);
    return const SchemaObject(
        ObjectType.realmObject, WorkoutModel, 'WorkoutModel', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('date', RealmPropertyType.timestamp),
      SchemaProperty('activities', RealmPropertyType.object,
          linkTarget: 'ActivityModel',
          collectionType: RealmCollectionType.list),
    ]);
  }
}

class ActivityModel extends _ActivityModel
    with RealmEntity, RealmObjectBase, RealmObject {
  ActivityModel(
    String id, {
    ExerciseModel? exercise,
    int? repetitions,
    int? series,
    int? durationInSeconds,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'exercise', exercise);
    RealmObjectBase.set(this, 'repetitions', repetitions);
    RealmObjectBase.set(this, 'series', series);
    RealmObjectBase.set(this, 'duration', durationInSeconds);
  }

  ActivityModel._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  ExerciseModel? get exercise =>
      RealmObjectBase.get<ExerciseModel>(this, 'exercise') as ExerciseModel?;
  @override
  set exercise(covariant ExerciseModel? value) =>
      RealmObjectBase.set(this, 'exercise', value);

  @override
  int? get repetitions => RealmObjectBase.get<int>(this, 'repetitions') as int?;
  @override
  set repetitions(int? value) =>
      RealmObjectBase.set(this, 'repetitions', value);

  @override
  int? get series => RealmObjectBase.get<int>(this, 'series') as int?;
  @override
  set series(int? value) => RealmObjectBase.set(this, 'series', value);

  @override
  int? get durationInSeconds =>
      RealmObjectBase.get<int>(this, 'duration') as int?;
  @override
  set durationInSeconds(int? value) =>
      RealmObjectBase.set(this, 'duration', value);

  @override
  Stream<RealmObjectChanges<ActivityModel>> get changes =>
      RealmObjectBase.getChanges<ActivityModel>(this);

  @override
  ActivityModel freeze() => RealmObjectBase.freezeObject<ActivityModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ActivityModel._);
    return const SchemaObject(
        ObjectType.realmObject, ActivityModel, 'ActivityModel', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('exercise', RealmPropertyType.object,
          optional: true, linkTarget: 'ExerciseModel'),
      SchemaProperty('repetitions', RealmPropertyType.int, optional: true),
      SchemaProperty('series', RealmPropertyType.int, optional: true),
      SchemaProperty('durationInSeconds', RealmPropertyType.int,
          mapTo: 'duration', optional: true),
    ]);
  }
}

class ExerciseModel extends _ExerciseModel
    with RealmEntity, RealmObjectBase, RealmObject {
  ExerciseModel(
    String id,
    String title,
    String description,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'description', description);
  }

  ExerciseModel._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  Stream<RealmObjectChanges<ExerciseModel>> get changes =>
      RealmObjectBase.getChanges<ExerciseModel>(this);

  @override
  ExerciseModel freeze() => RealmObjectBase.freezeObject<ExerciseModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ExerciseModel._);
    return const SchemaObject(
        ObjectType.realmObject, ExerciseModel, 'ExerciseModel', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('description', RealmPropertyType.string),
    ]);
  }
}
