part of 'shop_cubit.dart';

@freezed
abstract class ShopState with _$ShopState {
  const factory ShopState.initial(List<Bear> usBears) = Intial;

  const factory ShopState.loading() = Loading;

  const factory ShopState.error() = Error;
}