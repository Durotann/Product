// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_screen_bloc.dart';

@immutable
sealed class HomeScreenState {}

final class HomeScreenInitial extends HomeScreenState {}

class ProductLoading extends HomeScreenState {}

class ProductLoaded extends HomeScreenState {
  final Product data;
  final List<AtributModel> data1;
  ProductLoaded({
    required this.data1,
    required this.data,
  });
}

class AtributeLoaded extends HomeScreenState {
  final List<AtributModel> data1;
  AtributeLoaded({
    required this.data1,
  });
}

class AtributeLoading extends HomeScreenState {}
