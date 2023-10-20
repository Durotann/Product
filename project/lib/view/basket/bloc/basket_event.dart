// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'basket_bloc.dart';

@immutable
sealed class BasketEvent {}

class BasketAdd extends BasketEvent {
  final int variation_id;
  final int product_id;

  BasketAdd({
    required this.variation_id,
    required this.product_id,
  });
}

class BasketLoad extends BasketEvent {}
