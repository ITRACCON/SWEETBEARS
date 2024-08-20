import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweetbears/domain/repository/user_repository.dart';
import 'package:sweetbears/domain/models/referal_model.dart';

part 'user_cubit.freezed.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository _userRepository = UserRepository();

  UserCubit() : super(const Loading());

  Future<void> intialUserInfo(int idTg) async {
    List<Referal> referals = await _userRepository.getReferals(idTg);
    Map userInfo = {'referals': referals};
    emit(Intial(userInfo));
  }
}
