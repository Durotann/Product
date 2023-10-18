// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_description_bloc.dart';

@immutable
sealed class ProductDescriptionState {}

final class ProductDescriptionInitial extends ProductDescriptionState {}

class ProductDescriptionLoading extends ProductDescriptionState {}

class ProductDescriptionLoaded extends ProductDescriptionState {
  final ProductDescription data;
  ProductDescriptionLoaded({
    required this.data,
  });
}
