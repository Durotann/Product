// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_description_bloc.dart';

@immutable
sealed class ProductDescriptionEvent {}

class ProductDescriptionLoad extends ProductDescriptionEvent {
  final int id;
  ProductDescriptionLoad({
    required this.id,
  });
}
