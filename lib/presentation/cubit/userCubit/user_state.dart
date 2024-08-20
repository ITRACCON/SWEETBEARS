part of 'user_cubit.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial(Map userInfo) = Intial;

  const factory UserState.loading() = Loading;

  const factory UserState.error() = Error;
}