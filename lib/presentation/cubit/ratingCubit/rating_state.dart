part of 'rating_cubit.dart';

@freezed
abstract class RatingState with _$RatingState {
  const factory RatingState.initial(List<User> users) = Intial;

  const factory RatingState.loading() = Loading;

  const factory RatingState.error() = Error;
}