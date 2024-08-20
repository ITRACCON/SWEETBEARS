import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweetbears/domain/repository/user_repository.dart';
import 'package:sweetbears/domain/models/user_model.dart';

part 'rating_cubit.freezed.dart';

part 'rating_state.dart';

class RatingCubit extends Cubit<RatingState> {
  final UserRepository _userRepository = UserRepository();

  RatingCubit() : super(const Loading());

  Future<void> initUsers() async {
    List<User> users = await _userRepository.getUsers();
    emit(Intial(users));
  }
}
