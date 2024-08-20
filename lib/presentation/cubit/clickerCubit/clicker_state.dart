part of 'clicker_cubit.dart';

@freezed
abstract class ClickerState with _$ClickerState {
  const factory ClickerState.initial(int balance) = Intial;

  const factory ClickerState.loading() = Loading;

  const factory ClickerState.error() = Error;
}