import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweetbears/domain/repository/user_repository.dart';
import 'package:sweetbears/domain/models/bear_model.dart';

part 'shop_cubit.freezed.dart';

part 'shop_state.dart';

class ShopCubit extends Cubit<ShopState> {
  final UserRepository _userRepository = UserRepository();

  ShopCubit() : super(const Loading());

  Future<void> initUserBears(int idTg) async {
    List<Bear> usBears = await _userRepository.getUserBears(idTg);
    emit(Intial(usBears));
  }

  Future<void> buyBear(int idTg, Bear bear) async {
    await _userRepository.buyBear(idTg, bear); 
    List<Bear> usBears = await _userRepository.getUserBears(idTg);
    emit(Intial(usBears));
  }

   Future<void> changeBear(int idTg, Bear bear) async {
    await _userRepository.changeBear(idTg, bear); 
    List<Bear> usBears = await _userRepository.getUserBears(idTg);
    emit(Intial(usBears));
  }
}
