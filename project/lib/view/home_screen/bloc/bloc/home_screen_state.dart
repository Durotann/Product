// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_screen_bloc.dart';

@immutable
sealed class HomeScreenState {}

final class HomeScreenInitial extends HomeScreenState {}

class ProductLoading extends HomeScreenState {}

class ProductLoaded extends HomeScreenState {
  final Product data;
  ProductLoaded({
    required this.data,
  });
}
