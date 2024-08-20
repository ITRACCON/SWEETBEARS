import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweetbears/domain/repository/user_repository.dart';
import 'package:sweetbears/domain/models/user_model.dart';

part 'user_auth_cubit.freezed.dart';

part 'user_auth_state.dart';

class UserAuthCubit extends Cubit<UserAuthState> {
  final UserRepository _userRepository = UserRepository();

  UserAuthCubit() : super(const Loading());

  Future<void> intialUser(int idTg) async {
    emit(Loading());
    await Future.delayed(Duration(seconds: 2));
    User user = await _userRepository.getUser(idTg);
    User userNew = user;
    emit(Intial(user));
  }

  Future<void> initUserHome(int idTg) async {
    User user = await _userRepository.getUser(idTg);
    User userNew = new User(
        idTg: user.idTg,
        username: user.username,
        level: user.level,
        balance: user.balance,
        amountTap: user.amountTap,
        energy: user.energy,
        energyLimit: user.energyLimit,
        refs: user.refs,
        idbear: user.idbear);
    emit(Intial(userNew));
  }
}
