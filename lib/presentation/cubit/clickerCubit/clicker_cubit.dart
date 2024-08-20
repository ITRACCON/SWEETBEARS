import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweetbears/domain/repository/user_repository.dart';

part 'clicker_cubit.freezed.dart';

part 'clicker_state.dart';

class ClickerCubit extends Cubit<ClickerState> {
  final UserRepository _userRepository = UserRepository();

  ClickerCubit() : super(const Loading());

  Future<void> updateBalAndEnergyUser(int idTg, int bal, int energy) async {
    await _userRepository.updateBalAndEnergyUser(idTg, bal, energy);
  }
}
