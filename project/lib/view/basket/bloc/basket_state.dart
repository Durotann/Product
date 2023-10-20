part of 'basket_bloc.dart';

@immutable
sealed class BasketState {}

final class BasketInitial extends BasketState {}

class BasketLoading extends BasketState {}

class BasketAddLoaded extends BasketState {
  final Map<String, dynamic> data;
  BasketAddLoaded({
    required this.data,
  });
}

class BasketLoaded extends BasketState {
  final Map<String, dynamic> data;
  BasketLoaded({
    required this.data,
  });
}
