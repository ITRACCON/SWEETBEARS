import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweetbears/domain/repository/user_repository.dart';
import 'package:sweetbears/domain/models/exercise_model.dart';

part 'exercise_cubit.freezed.dart';

part 'exercise_state.dart';

class ExerciseCubit extends Cubit<ExerciseState> {
  final UserRepository _userRepository = UserRepository();

  ExerciseCubit() : super(const Loading());

  Future<void> initExercise(int idTg) async {
    Exercise exercise = await _userRepository.getExercise(idTg);
    emit(Intial(exercise));
  }

  Future<void> updateExercise(int idTg, String exercis, int cash) async {
    await _userRepository.updateExercise(idTg, exercis, cash);
    Exercise exercise = await _userRepository.getExercise(idTg);
    emit(Intial(exercise));
  }
}
