part of 'exercise_cubit.dart';

@freezed
abstract class ExerciseState with _$ExerciseState {
  const factory ExerciseState.initial(Exercise exercise) = Intial;

  const factory ExerciseState.loading() = Loading;

  const factory ExerciseState.error() = Error;
}